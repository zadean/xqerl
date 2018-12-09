
# xqerl
Erlang XQuery 3.1 Processor and XML Database

This is a currently a draft/proof-of-concept. Please don't try to use it for any "real" computing (yet)!

It is passing 99.7% of ~29k test cases. 1,753 cases are skipped due to functions or features that are optional.


##### New to Erlang?
   Check out the Getting Started [section](./doc/src/GettingStarted.md)

### Features it has:
* Module Feature
* Serialization Feature
* Higher-Order Function Feature

### Features it does not have, but might later:

* XQuery Update Facility
* Schema Aware & Typed Data Features
* Static Typing Feature

### Using

XQuery modules must be compiled before being used. To compile an XQuery from file use: `xqerl_module:compile(FileName)`.
The value returned from the `xqerl_module:compile(FileName)` call is an atom with the name of the module. This atom can be used to call Main modules. For example:

```erlang
(xqerl_node@127.0.0.1)1> M = xqerl_module:compile("/home/coolperson/coolModule.xq").
file____home_coolperson_coolModule_xq
(xqerl_node@127.0.0.1)2> M:main(#{}). % or optionally file____home_coolperson_coolModule_xq:main(#{}).
```

The map parameter is the context item given to the query. This is where external variable values and the context item can be set.

The return value will depend on the serialization parameters in effect in the source file. With no parameters, an Erlang term will be returned. With a serialization method, a binary will be returned.

##### Loading Data
To load data into the database use the `xqldb_dml:insert_doc(DocUri, Filename)` function. As the parameter names point out, the first parameter is the URI that will be used in functions like `fn:doc` or `fn:collection`, and the second value is the absolute file location to insert.
Deleting data is done with function `xqldb_dml:delete_doc(DocUri)`.

### Building
rebar3 is currently the best way to build xqerl from source. In the future, release packages will be bundled for easy installation.

### Contributing
Yes, please. I've been doing it alone, so any help is much appreciated.


### Known problems and TODO's:

A query-rewrite phase is missing. A cost-based implementation that can be run at the database level should be added. 

RestXQ is not yet implemented. Once it is, xqerl will most-likely only use a REST API. 

Static module information is saved in mnesia. This could be put into a gen_server as mnesia is a bit of overkill.

Serialization is not implemented 100%. Most cases should work, but some will not work properly. 

Database processes should close their files and hibernate after a timeout period.

... and most likely many more things ...

