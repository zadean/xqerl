%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2018 Zachary N. Dean  All Rights Reserved.
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

%% @doc The "http://www.w3.org/2005/xqt-errors" namespace.

-module(xqerl_error).


%% ====================================================================
%% API functions
%% ====================================================================
-export([error/1]).
-export([error/2]).
-export([error/3]).

-include("xqerl.hrl").

-define(str(S), #xqAtomicValue{type = 'xs:string', value = S} ).
-define(NS, "http://www.w3.org/2005/xqt-errors").

-dialyzer({[no_return], [error/1, error/2, error/3]}).

%% -record(xqError, {
%%       name,
%%       description,
%%       value,
%%       location % {Module, Line, Column} %TODO
%%    }).

error(#qname{} = Name) ->
   Err = #xqError{name = #xqAtomicValue{type = 'xs:QName', value = Name},
                  description = ?str(msg('FOER0000'))},
   exit(Err);
error(Code) when is_atom(Code) ->
   Err = #xqError{name = #xqAtomicValue{type = 'xs:QName', value = 
                                          #qname{namespace = ?NS, 
                                prefix = "err", 
                                local_name = atom_to_list(Code)}},
                  description = ?str(msg(Code))},
   exit(Err).

error(#qname{} = Name, Msg) ->
   Err = #xqError{name = #xqAtomicValue{type = 'xs:QName', value = Name},
                  description = Msg},
   exit(Err);
error(Code, Msg) ->
   Err = #xqError{name = #xqAtomicValue{type = 'xs:QName', value = 
                                          #qname{namespace = ?NS, 
                                prefix = "err", 
                                local_name = atom_to_list(Code)}},
                  description = Msg},
   exit(Err).

error(#qname{} = Name, Msg, Obj) ->
   Err = #xqError{name = #xqAtomicValue{type = 'xs:QName', value = Name},
                  description = Msg,
                  value = Obj},
   exit(Err);
error(Code, Msg, Obj) ->
   Err = #xqError{name = 
                    #xqAtomicValue{type = 'xs:QName',
                                   value = #qname{namespace = ?NS,
                                                  prefix = "err",
                                                  local_name = 
                                                    atom_to_list(Code)}},
                  description = Msg,
                  value = Obj},
   exit(Err).


%% 2.1 Functions and Operators

msg('FOAP0001') -> "Wrong number of arguments.";
msg('FOAR0001') -> "Division by zero.";
msg('FOAR0002') -> "Numeric operation overflow/underflow.";
msg('FOAY0001') -> "Array index out of bounds.";
msg('FOAY0002') -> "Negative array length.";
msg('FOCA0001') -> "Input value too large for decimal.";
msg('FOCA0002') -> "Invalid lexical value.";
msg('FOCA0003') -> "Input value too large for integer.";
msg('FOCA0005') -> "NaN supplied as float/double value.";
msg('FOCA0006') -> "String to be cast to decimal has too many digits of precision.";
msg('FOCH0001') -> "Codepoint not valid.";
msg('FOCH0002') -> "Unsupported collation.";
msg('FOCH0003') -> "Unsupported normalization form.";
msg('FOCH0004') -> "Collation does not support collation units.";
msg('FODC0001') -> "No context document.";
msg('FODC0002') -> "Error retrieving resource.";
msg('FODC0003') -> "Function not defined as deterministic.";
msg('FODC0004') -> "Invalid collection URI.";
msg('FODC0005') -> "Invalid argument to fn:doc or fn:doc-available.";
msg('FODC0006') -> "String passed to fn:parse-xml is not a well-formed XML document.";
msg('FODC0010') -> "The processor does not support serialization.";
msg('FODF1280') -> "Invalid decimal format name.";
msg('FODF1310') -> "Invalid decimal format picture string.";
msg('FODT0001') -> "Overflow/underflow in date/time operation.";
msg('FODT0002') -> "Overflow/underflow in duration operation.";
msg('FODT0003') -> "Invalid timezone value.";
msg('FOER0000') -> "Unidentified error.";
msg('FOFD1340') -> "Invalid date/time formatting parameters.";
msg('FOFD1350') -> "Invalid date/time formatting component.";
msg('FOJS0001') -> "JSON syntax error.";
msg('FOJS0003') -> "JSON duplicate keys.";
msg('FOJS0004') -> "JSON: not schema-aware.";
msg('FOJS0005') -> "Invalid options.";
msg('FOJS0006') -> "Invalid XML representation of JSON.";
msg('FOJS0007') -> "Bad JSON escape sequence.";
msg('FONS0004') -> "No namespace found for prefix.";
msg('FONS0005') -> "Base-uri not defined in the static context.";
msg('FOQM0001') -> "Module URI is a zero-length string.";
msg('FOQM0002') -> "Module URI not found.";
msg('FOQM0003') -> "Static error in dynamically-loaded XQuery module.";
msg('FOQM0005') -> "Parameter for dynamically-loaded XQuery module has incorrect type.";
msg('FOQM0006') -> "No suitable XQuery processor available.";
msg('FORG0001') -> "Invalid value for cast/constructor.";
msg('FORG0002') -> "Invalid argument to fn:resolve-uri().";
msg('FORG0003') -> "fn:zero-or-one called with a sequence containing more than one item.";
msg('FORG0004') -> "fn:one-or-more called with a sequence containing no items.";
msg('FORG0005') -> "fn:exactly-one called with a sequence containing zero or more than one item.";
msg('FORG0006') -> "Invalid argument type.";
msg('FORG0008') -> "The two arguments to fn:dateTime have inconsistent timezones.";
msg('FORG0009') -> "Error in resolving a relative URI against a base URI in fn:resolve-uri.";
msg('FORG0010') -> "Invalid date/time.";
msg('FORX0001') -> "Invalid regular expression flags.";
msg('FORX0002') -> "Invalid regular expression.";
msg('FORX0003') -> "Regular expression matches zero-length string.";
msg('FORX0004') -> "Invalid replacement string.";
msg('FOTY0012') -> "Argument to fn:data() contains a node that does not have a typed value.";
msg('FOTY0013') -> "The argument to fn:data() contains a function item.";
msg('FOTY0014') -> "The argument to fn:string() is a function item.";
msg('FOTY0015') -> "An argument to fn:deep-equal() contains a function item.";
msg('FOUT1170') -> "Invalid $href argument to fn:unparsed-text() (etc.)";
msg('FOUT1190') -> "Cannot decode resource retrieved by fn:unparsed-text() (etc.)";
msg('FOUT1200') -> "Cannot infer encoding of resource retrieved by fn:unparsed-text() (etc.)";
msg('FOXT0001') -> "No suitable XSLT processor available";
msg('FOXT0002') -> "Invalid parameters to XSLT transformation";
msg('FOXT0003') -> "XSLT transformation failed";
msg('FOXT0004') -> "XSLT transformation has been disabled";
msg('FOXT0006') -> "XSLT output contains non-accepted characters";

%% 2.3 XQuery and XPath

msg('XPDY0002') -> "It is a dynamic error if evaluation of an expression relies on some part of the dynamic context that has not been assigned a valueis .";
msg('XQDY0025') -> "It is a dynamic error if any attribute of a constructed element does not have a name that is distinct from the names of all other attributes of the constructed element.";
msg('XQDY0026') -> "It is a dynamic error if the result of the content expression of a computed processing instruction constructor contains the string \"?>\".";
msg('XQDY0027') -> "In a validate expression, it is a dynamic error if the root element information item in the PSVI resulting from validation does not have the expected validity property: valid if validation mode is strict, or either valid or notKnown if validation mode is lax.";
msg('XQDY0041') -> "It is a dynamic error if the value of the name expression in a computed processing instruction constructor cannot be cast to the type xs:NCName.";
msg('XQDY0044') -> "It is a dynamic error the node-name of a node constructed by a computed attribute constructor has any of the following properties: Its namespace prefix is xmlns. It has no namespace prefix and its local name is xmlns. Its namespace URI is http://www.w3.org/2000/xmlns/. Its namespace prefix is xml and its namespace URI is not http://www.w3.org/XML/1998/namespace. Its namespace prefix is other than xml and its namespace URI is http://www.w3.org/XML/1998/namespace.";
msg('XPDY0050') -> "It is a dynamic error if the dynamic type of the operand of a treat expression does not match the sequence type specified by the treat expression. This error might also be raised by a path expression beginning with \"/\" or \"//\" if the context node is not in a tree that is rooted at a document node. This is because a leading \"/\" or \"//\" in a path expression is an abbreviation for an initial step that includes the clause treat as document-node().";
msg('XQDY0054') -> "It is a dynamic error if a cycle is encountered in the definition of a module's dynamic context components, for example because of a cycle in variable declarations.";
msg('XQDY0061') -> "It is a dynamic error if the operand of a validate expression is a document node whose children do not consist of exactly one element node and zero or more comment and processing instruction nodes, in any order.";
msg('XQDY0064') -> "It is a dynamic error if the value of the name expression in a computed processing instruction constructor is equal to \"XML\" (in any combination of upper and lower case).";
msg('XQDY0072') -> "It is a dynamic error if the result of the content expression of a computed comment constructor contains two adjacent hyphens or ends with a hyphen.";
msg('XQDY0074') -> "It is a dynamic error if the value of the name expression in a computed element or attribute constructor cannot be converted to an expanded QName (for example, because it contains a namespace prefix not found in statically known namespaces.)";
msg('XQDY0084') -> "It is a dynamic error if the element validated by a validate statement does not have a top-level element declaration in the in-scope element declarations, if validation mode is strict.";
msg('XQDY0091') -> "An implementation MAY raise a dynamic error if an xml:id error, as defined in , is encountered during construction of an attribute named xml:id.";
msg('XQDY0092') -> "An implementation MAY raise a dynamic error if a constructed attribute named xml:space has a value other than preserve or default.";
msg('XQDY0096') -> "It is a dynamic error if the node-name of a node constructed by a computed element constructor has any of the following properties: Its namespace prefix is xmlns. Its namespace URI is http://www.w3.org/2000/xmlns/. Its namespace prefix is xml and its namespace URI is not http://www.w3.org/XML/1998/namespace. Its namespace prefix is other than xml and its namespace URI is http://www.w3.org/XML/1998/namespace.";
msg('XQDY0101') -> "An error is raised if a computed namespace constructor attempts to do any of the following: Bind the prefix xml to some namespace URI other than http://www.w3.org/XML/1998/namespace. Bind a prefix other than xml to the namespace URI http://www.w3.org/XML/1998/namespace. Bind the prefix xmlns to any namespace URI. Bind a prefix to the namespace URI http://www.w3.org/2000/xmlns/. Bind any prefix (including the empty prefix) to a zero-length namespace URI.";
msg('XQDY0102') -> "In an element constructor, if two or more namespace bindings in the in-scope bindings would have the same prefix, then an error is raised if they have different URIs; if they would have the same prefix and URI, duplicate bindings are ignored. If the name of an element in an element constructor is in no namespace, creating a default namespace for that element using a computed namespace constructor is an error.";
msg('XPDY0130') -> "An implementation-dependent limit has been exceeded.";
msg('XPDY0137') -> "No two keys in a map may have the same key value.";
msg('XPST0001') -> "It is a static error if analysis of an expression relies on some component of the static context that has not been assigned a valueis .";
msg('XPST0003') -> "It is a static error if an expression is not a valid instance of the grammar defined in .";
msg('XPST0005') -> "During the analysis phase, it is a static error if the static type assigned to an expression other than the expression () or data(()) is empty-sequence().";
msg('XPST0008') -> "It is a static error if an expression refers to an element name, attribute name, schema type name, namespace prefix, or variable name that is not defined in the static context, except for an ElementName in an ElementTest or an AttributeName in an AttributeTest.";
msg('XQST0009') -> "An implementation that does not support the Schema Aware Feature must raise a static error if a Prolog contains a schema import.";
msg('XPST0010') -> "An implementation that does not support the namespace axis must raise a static error if it encounters a reference to the namespace axis and XPath 1.0 compatibility mode is false.";
msg('XQST0012') -> "It is a static error if the set of definitions contained in all schemas imported by a Prolog do not satisfy the conditions for schema validity specified in Sections 3 and 5 of Part 1 of or --i.e., each definition must be valid, complete, and unique.";
msg('XQST0013') -> "It is a static error if an implementation recognizes a pragma but determines that its content is invalid.";
msg('XQST0016') -> "An implementation that does not support the Module Feature raises a static error if it encounters a module declaration or a module import.";
msg('XPST0017') -> "It is a static error if the expanded QName and number of arguments in a static function call do not match the name and arity of a function signature in the static context.";
msg('XQST0022') -> "It is a static error if the value of a namespace declaration attribute is not a URILiteral.contains an EnclosedExpr.";
msg('XQST0031') -> "It is a static error if the version number specified in a version declaration is not supported by the implementation.";
msg('XQST0032') -> "A static error is raised if a Prolog contains more than one base URI declaration.";
msg('XQST0033') -> "It is a static error if a module contains multiple bindings for the same namespace prefix.";
msg('XQST0034') -> "It is a static error if multiple functions declared or imported by a module have the same number of arguments and their expanded QNames are equal (as defined by the eq operator).";
msg('XQST0035') -> "It is a static error to import two schema components that both define the same name in the same symbol space and in the same scope.";
msg('XQST0038') -> "It is a static error if a Prolog contains more than one default collation declaration, or the value specified by a default collation declaration is not present in statically known collations.";
msg('XQST0039') -> "It is a static error for a function declaration or an inline function expression to have more than one parameter with the same name.";
msg('XQST0040') -> "It is a static error if the attributes specified by a direct element constructor do not have distinct expanded QNames.";
msg('XQST0045') -> "It is a static error if the name of a variable annotation, a function annotation, or the function name in a function declaration is in a reserved namespace.";
msg('XQST0046') -> "An implementation MAYMAY raise a static error if the value of a URILiteral or a BracedURILiteral is of nonzero length and is not in the lexical space of xs:anyURIneither an absolute URI nor a relative URI.";
msg('XQST0047') -> "It is a static error if multiple module imports in the same Prolog specify the same target namespace.";
msg('XQST0048') -> "It is a static error if a function or variable declared in a library module is not in the target namespace of the library module.";
msg('XQST0049') -> "It is a static error if two or more variables declared or imported by a module have equal expanded QNames (as defined by the eq operator.)";
msg('XPST0051') -> "It is a static error if the expanded QName for an AtomicOrUnionType in a SequenceType is not defined in the in-scope schema types as a generalized atomic type.";
msg('XQST0052') -> "The type named in a cast or castable expression must be the name of a type defined in the in-scope schema types, and the{variety} of the type must be simple.";
msg('XQST0055') -> "It is a static error if a Prolog contains more than one copy-namespaces declaration.";
msg('XQST0057') -> "It is a static error if a schema import binds a namespace prefix but does not specify a target namespace other than a zero-length string.";
msg('XQST0058') -> "It is a static error if multiple schema imports specify the same target namespace.";
msg('XQST0059') -> "It is a static error if an implementation is unable to process a schema or module import by finding a schema or module with the specified target namespace.";
msg('XQST0060') -> "It is a static error if the name of a function in a function declaration is not in a namespace (expanded QName has a null namespace URI).";
msg('XQST0065') -> "A static error is raised if a Prolog contains more than one ordering mode declaration.";
msg('XQST0066') -> "A static error is raised if a Prolog contains more than one default element/type namespace declaration, or more than one default function namespace declaration.";
msg('XQST0067') -> "A static error is raised if a Prolog contains more than one construction declaration.";
msg('XQST0068') -> "A static error is raised if a Prolog contains more than one boundary-space declaration.";
msg('XQST0069') -> "A static error is raised if a Prolog contains more than one empty order declaration.";
msg('XQST0070') -> "A static error is raised if one of the predefined prefixes xml or xmlns appears in a namespace declaration or a default namespace declaration, or if any of the following conditions is statically detected in any expression or declaration: A static error is raised if any of the following conditions is statically detected in any expression: The prefix xml is bound to some namespace URI other than http://www.w3.org/XML/1998/namespace. A prefix other than xml is bound to the namespace URI http://www.w3.org/XML/1998/namespace. The prefix xmlns is bound to any namespace URI. A prefix other than xmlns is bound to the namespace URI http://www.w3.org/2000/xmlns/.";
msg('XQST0071') -> "A static error is raised if the namespace declaration attributes of a direct element constructor do not have distinct names.";
msg('XQST0075') -> "An implementation that does not support the Schema Aware Feature Validation Feature must raise a static error if it encounters a validate expression.";
msg('XQST0076') -> "It is a static error if a collation subclause in an order by or group by clause of a FLWOR expression does not identify a collation that is present in statically known collations.";
msg('XQST0079') -> "It is a static error if an extension expression contains neither a pragma that is recognized by the implementation nor an expression enclosed in curly braces.";
msg('XPST0080') -> "It is a static error if the target type of a cast or castable expression is xs:NOTATION, xs:anySimpleType, or xs:anyAtomicType.";
msg('XPST0081') -> "It is a static error if a QName used in a queryan expression contains a namespace prefix that cannot be expanded into a namespace URI by using the statically known namespaces.";
msg('XQST0085') -> "It is a static error if the namespace URI in a namespace declaration attribute is a zero-length string, and the implementation does not support .";
msg('XQST0087') -> "It is a static error if the encoding specified in a Version Declaration does not conform to the definition of EncName specified in .";
msg('XQST0088') -> "It is a static error if the literal that specifies the target namespace in a module import or a module declaration is of zero length.";
msg('XQST0089') -> "It is a static error if a variable bound in a for or window clause of a FLWOR expression, and its associated positional variable, do not have distinct names (expanded QNames).";
msg('XQST0090') -> "It is a static error if a character reference does not identify a valid character in the version of XML that is in use.";
msg('XQST0094') -> "The name of each grouping variable must be equal (by the eq operator on expanded QNames) to the name of a variable in the input tuple stream.";
msg('XQST0097') -> "It is a static error for a decimal-format to specify a value that is not valid for a given property, as described in statically known decimal formats";
msg('XQST0098') -> "It is a static error if, for any named or unnamed decimal format, the properties representing characters used in a picture string do not each have distinct values. The following properties represent characters used in a picture string: decimal-separator, exponent-separator, grouping-separator, percent, per-mille, the family of ten decimal digits starting with zero-digit, digit, and pattern-separator.";
msg('XQST0099') -> "A ContextItemDecl must not occur after an expression that relies on the initial context item, and no queryNo module may contain more than one ContextItemDecl.";
msg('XQST0103') -> "All variables in a window clause must have distinct names.";
msg('XQST0104') -> "A TypeName that is specified in a validate expression must be found in the in-scope schema definitions";
msg('XQST0106') -> "It is a static error if a function declaration contains both a %private and a %public annotation. It is a static error if a function's annotations contain more than one annotation named %private or %public, more than one %private annotation, or more than one %public annotation. It is a static error if a function's annotations contain more than one annotation named %deterministic or %nondeterministic.";
msg('XQST0108') -> "It is a static error if an output declaration occurs in a library module.";
msg('XQST0109') -> "It is a static error if the local name of an output declaration in the http://www.w3.org/2010/xslt-xquery-serialization namespace is not one of the serialization parameter names listed in , or if the name of an output declaration is use-character-maps.";
msg('XQST0110') -> "It is a static error if the same serialization parameter is used more than once in an output declaration.";
msg('XQST0111') -> "It is a static error for a query prolog to contain two decimal formats with the same name, or to contain two default decimal formats.";
msg('XQST0113') -> "Specifying a VarValue or VarDefaultValue for a context item declaration in a library module is a static error.";
msg('XQST0114') -> "It is a static error for a decimal format declaration to define the same property more than once.";
msg('XQST0115') -> "It is a static error if the document specified by the option \"http://www.w3.org/2010/xslt-xquery-serialization\":parameter-document raises a serialization error.";
msg('XQST0116') -> "It is a static error if a variable declaration's annotations contain more than one annotation named %private or %public. if a variable declaration contains both a %private and a %public annotation, more than one %private annotation, or more than one %public annotation.";
msg('XQST0118') -> "In a direct element constructor, the name used in the end tag must exactly match the name used in the corresponding start tag, including its prefix or absence of a prefix.";
msg('XQST0119') -> "It is a static error if the implementation is not able to process the value of an output:parameter-document declaration to produce an XDM instance.";
msg('XQST0125') -> "It is a static error if an inline function expression is annotated as %public or %private.";
msg('XQST0129') -> "An implementation that does not provide the Higher-Order Function Feature MUST raise a static error if it encounters a FunctionTest, dynamic function call, named function reference, inline function expression, or partial function application.";
msg('XQST0134') -> "The namespace axis is not supported.";
msg('XPTY0004') -> "It is a type error if, during the static analysis phase, an expression is found to have a static type that is not appropriate for the context in which the expression occurs, or during the dynamic evaluation phase, the dynamic type of a value does not match a required type as specified by the matching rules in .";
msg('XPTY0018') -> "It is a type error if the result of a path operator contains both nodes and non-nodes.";
msg('XPTY0019') -> "It is a type error if E1 in a path expression E1/E2 does not evaluate to a sequence of nodes.";
msg('XPTY0020') -> "It is a type error if, in an axis step, the context item is not a node.";
msg('XQTY0024') -> "It is a type error if the content sequence in an element constructor contains an attribute node following a node that is not an attribute node.";
msg('XQTY0030') -> "It is a type error if the argument of a validate expression does not evaluate to exactly one document or element node.";
msg('XQTY0086') -> "It is a type error if the typed value of a copied element or attribute node is namespace-sensitive when construction mode is preserve and copy-namespaces mode is no-preserve.";
msg('XQTY0105') -> "It is a type error if the content sequence in an element constructor contains a function item.";
msg('XPTY0117') -> "When applying the function conversion rules, if an item is of type xs:untypedAtomic and the expected type is namespace-sensitive, a type error is raised.";

%% 2.4 Serialization

msg('SENR0001') -> "It is an error if an item in S6 in sequence normalization is an attribute node or a namespace node.";
msg('SERE0003') -> "It is an error if the serializer is unable to satisfy the rules for either a well-formed XML document entity or a well-formed XML external general parsed entity, or both, except for content modified by the character expansion phase of serialization.";
msg('SEPM0004') -> "It is an error to specify the doctype-system parameter, or to specify the standalone parameter with a value other than omit, if the instance of the data model contains text nodes or multiple element nodes as children of the root node.";
msg('SERE0005') -> "It is an error if the serialized result would contain an NCName that contains a character that is not permitted by the version of Namespaces in XML specified by the version parameter.";
msg('SERE0006') -> "It is an error if the serialized result would contain a character that is not permitted by the version of XML specified by the version parameter.";
msg('SESU0007') -> "It is an error if an output encoding other than UTF-8 or UTF-16 is requested and the serializer does not support that encoding.";
msg('SERE0008') -> "It is an error if a character that cannot be represented in the encoding that the serializer is using for output appears in a context where character references are not allowed (for example if the character occurs in the name of an element).";
msg('SEPM0009') -> "It is an error if the omit-xml-declaration parameter has the value yes, true or 1, and the standalone attribute has a value other than omit; or the version parameter has a value other than 1.0 and the doctype-system parameter is specified.";
msg('SEPM0010') -> "It is an error if the output method is xml or xhtml, the value of the undeclare-prefixes parameter is one of, yes, true or 1, and the value of the version parameter is 1.0.";
msg('SESU0011') -> "It is an error if the value of the normalization-form parameter specifies a normalization form that is not supported by the serializer.";
msg('SERE0012') -> "It is an error if the value of the normalization-form parameter is fully-normalized and any relevant construct of the result begins with a combining character.";
msg('SESU0013') -> "It is an error if the serializer does not support the version of XML or HTML specified by the version parameter.";
msg('SERE0014') -> "It is an error to use the HTML output method if characters which are permitted in XML but not in HTML appear in the instance of the data model.";
msg('SERE0015') -> "It is an error to use the HTML output method when > appears within a processing instruction in the data model instance being serialized.";
msg('SEPM0016') -> "It is an error if a parameter value is invalid for the defined domain.";
msg('SEPM0017') -> "It is an error if evaluating an expression in order to extract the setting of a serialization parameter from a data model instance would yield an error.";
msg('SEPM0018') -> "It is an error if evaluating an expression in order to extract the setting of the use-character-maps serialization parameter from a data model instance would yield a sequence of length greater than one.";
msg('SEPM0019') -> "It is an error if an instance of the data model used to specify the settings of serialization parameters specifies the value of the same parameter more than once.";
msg('SERE0020') -> "It is an error if a numeric value being serialized using the JSON output method cannot be represented in the JSON grammar (e.g. +INF, -INF, NaN).";
msg('SERE0021') -> "It is an error if a sequence being serialized using the JSON output method includes items for which no rules are provided in the appropriate section of the serialization rules.";
msg('SERE0022') -> "It is an error if a map being serialized using the JSON output method has two keys with the same string value, unless the allow-duplicate-names has the value yes, true or 1.";
msg('SERE0023') -> "It is an error if a sequence being serialized using the JSON output method is of length greater than one.";

msg(_Code) ->
   "Doh!!".


