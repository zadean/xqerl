# xqerl

Erlang XQuery 3.1 Processor and XML Database

## New to Erlang?

Check out the Getting Started [section](./docs/src/GettingStarted.md)

### What is xqerl?

xqerl is a self-contained XQuery 3.1 processor and XML database written in Erlang.

* xqerl can be embedded into Erlang or Elixir applications or be used as a stand-alone.
  * A small example of embedding XQuery into Erlang can be found [here](https://github.com/zadean/xqerl_demo_sudoku).
* User code is written in XQuery.
* The XQuery code is compiled to BEAM (the VM that runs Erlang, Elixir, and others).
* xqerl can use REST to speak to the outside-world. The REST end-points are defined by the user using XQuery and RESTXQ annotations.

xqerl is being actively developed and is not yet to a stable release. Changes can occur without notice. If you save data with it, that data may not be compatible with the most recent version of this repository in the master branch.

The first stable release will be coming soon, but isn't quite there yet.

It is passing **100%** of **30,895** test cases it runs. 1,823 other cases that test optional features or unsupported specification versions are skipped.
Most of the test cases run are from the [W3C QT3 test suite](https://github.com/w3c/qt3tests) for XPath and XQuery.
Others are from the [EXPath test suite](https://github.com/expath/expath-cg) and the Update Facility test suite for version 1.0.

### Modules

The modules statically available to XQuery code in xqerl are documented in the [xqerl documentation](https://zadean.github.io/xqerl/modules.html)

### Features it has

* [Module Feature](https://www.w3.org/TR/xquery-31/#id-module-feature)
* [Serialization Feature](https://www.w3.org/TR/xquery-31/#id-serialization-feature)
* [Higher-Order Function Feature](https://www.w3.org/TR/xquery-31/#id-higher-order-function-feature)
* [XQuery Update Facility 3.0](https://www.w3.org/TR/xquery-update-30)

### Features it does not have

* Schema Aware & Typed Data Features
* Full-Text Extension

### Using

There is no cool GUI or web interface. If you need that, you may want to try out one of the other XQuery processors out there that do have those features.
But since this implementation follows the specification, code written in another conforming processor should work just fine here.
A GUI may eventually be coming, but that will take some time and quite a bit of effort.

There is also no web-based administration tool. This will also eventually be added.  

The main idea with xqerl is to take XQuery code that works in other processors and turn that into scalable, concurrent Erlang applications.

xqerl compiles all code before use. That is, it does not compile on-the-fly. To compile an XQuery module from file, use: `xqerl:compile(FileName)`.
The value returned from the `xqerl:compile(FileName)` call is an atom with the name of the module. This atom is the Erlang module name, and can be used to call Main modules. For example:

```erlang
(xqerl_node@127.0.0.1)1> M = xqerl:compile("/home/coolperson/coolModule.xq").
file____home_coolperson_coolModule_xq
(xqerl_node@127.0.0.1)2> xqerl:run(M, #{}).
```

The map parameter is the external context given to the query. This is where external variable values and the context-item can be set.

The return value will depend on the serialization parameters in effect in the source file. With no parameters, an Erlang term will be returned. With a serialization method, a binary containing the serialized return value will be returned.

Library modules must also be pre-compiled before use. Also, modules that have dependencies must be compiled from the bottom-up, that is, those with no imports first.

#### Loading Data

To load data into the database use the `xqldb_dml:insert_doc(DocUri, Filename)` function. As the parameter names point out, the first parameter is the URI that will be used in functions like `fn:doc` or `fn:collection`, and the second value is the absolute file location to insert.
Deleting data is done with function `xqldb_dml:delete_doc(DocUri)`.

### Building

rebar3 is the best way to build xqerl (and its dependencies) from source. In the future, release packages will be bundled for easy installation.

### Running tests

`rebar3 ct --spec "test/test.specs"`

### Contributing

Yes, please. I've been doing it alone, so any help is much appreciated.
This doesn't just mean hacking Erlang, but could include adding documentation, tutorials, or just opening an issue for something you think is missing or would be a really cool thing to have included.

Or maybe you are more the social-media type? Reach out on twitter to [@xqerl](https://twitter.com/xqerl).

There is also a Slack workspace... named... you guessed it! `xqerl.slack.com`.

### TODO's

* A query-rewrite phase
* A cost-based implementation that can be run at the database level would be cool
* Moving atomic operators over to Rust NIFs (Petaurista)
* Indexes (indices) could be added for the more common access paths to the data

... and likely more things ...

see "Contributing"
