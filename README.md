![Logo](./doc/img/logo_m.png "xqerl")
# xqerl
Erlang XQuery 3.1 Processor and XML Database

This is a currently a draft/proof-of-concept. If you use it, don't use it for mission critical data!

It is passing 99.8% of 29,587 test cases it runs (57 failures). 
1,778 other cases that test optional features not implemented in xqerl are skipped. 
The test cases run are all taken from the [W3C QT3 test suite](https://github.com/w3c/qt3tests) for XPath and XQuery.


##### New to Erlang?
   Check out the Getting Started [section](./doc/src/GettingStarted.md)

### Features it has:
* Module Feature
* Serialization Feature
* Higher-Order Function Feature
* XQuery Update Facility 3.0

### Features it does not have:

* Schema Aware & Typed Data Features
* Static Typing Feature

### Using

There is no cool GUI or web interface. If you need that, you may want to try out one of the other XQuery processors out there that do have those features. 

The main idea with xqerl is to take XQuery code that works in other processors and turn that into scalable, concurrent Erlang applications.

xqerl compiles all code before use. That is, it does not compile on-the-fly. To compile an XQuery module from file, use: `xqerl:compile(FileName)`.
The value returned from the `xqerl:compile(FileName)` call is an atom with the name of the module. This atom is the Erlang module name, and can be used to call Main modules. For example:

```erlang
(xqerl_node@127.0.0.1)1> M = xqerl_module:compile("/home/coolperson/coolModule.xq").
file____home_coolperson_coolModule_xq
(xqerl_node@127.0.0.1)2> xqerl:run(M, #{}). 
```

The map parameter is the context item given to the query. This is where external variable values and the context-item can be set.

The return value will depend on the serialization parameters in effect in the source file. With no parameters, an Erlang term will be returned. With a serialization method, a binary will be returned.

Library modules must also be pre-compiled before use. Also, modules that have dependencies must be compiled from the bottom-up, that is, those with no imports first. 


##### Loading Data
To load data into the database use the `xqldb_dml:insert_doc(DocUri, Filename)` function. As the parameter names point out, the first parameter is the URI that will be used in functions like `fn:doc` or `fn:collection`, and the second value is the absolute file location to insert.
Deleting data is done with function `xqldb_dml:delete_doc(DocUri)`.

### Building
rebar3 is currently the best way to build xqerl (and its dependencies) from source. In the future, release packages will be bundled for easy installation.

### Running tests
`rebar3 ct`

### Contributing
Yes, please. I've been doing it alone, so any help is much appreciated.


### TODO's:

A query-rewrite phase is missing. A cost-based implementation that can be run at the database level should be added. 

Serialization is not implemented 100%. Most cases should work, but some corner-cases may not work properly. 

Database processes should close their files and hibernate after a timeout period.

... and likely more things ...

