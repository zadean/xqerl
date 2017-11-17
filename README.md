# xqerl
Erlang XQuery 3.1 Processor

This is a currently a draft/proof-of-concept. Please don't try to use it for "real" computing (yet)!

It is passing about 95% its (~29k) test cases. The other ~5% are mainly functions that have not been 
implemented, regex, and string collation related things.


### Features it has:

* Module Feature
* Higher-Order Function Feature

### Features it does not have, but might later:

* XQuery Update Facility
* Schema Aware Feature
* Typed Data Feature
* Static Typing Feature
* Serialization Feature

### Using

There is no real API to speak of yet, only debugging/testing functions. 

But, to run some XQuery you can use `xqerl:compile(FileName)` for library modules. 
`xqerl:run(String)` to compile and run a main module from a string.

The output from the main module will be in an internal format understood by xqerl. 

To see what it would look like as XML or text, the debugging function `xqerl_node:to_xml(Response)` can be used.

### Testing
The test suites use absolute paths for files. To run the tests locally, you can rebuild them using the XQuery script test/~test-case-builder.xq. 

### Building
The normal way :) but there are .xrl for leex and .yrl for yecc to build.
I am using eclipse, so there is currently no makefile or rebar config (coming soon).

### Contributing
Yes, please. I've been doing it alone, so any help is much appreciated.


### Known problems and TODO's:

<s>Regex is hacked together (fn:matches, fn:replace, etc.). 
To make it 100% (or even close) will take building a regex parser that rewrites XML Schema regex into one of the Erlang-known flavors.</s>
Regex is missing the concept of range subtraction. This accounts for over 100 errors. 

Query rewrite and optimization phases are still missing.

Streaming the variable tuple. Process to process message passing of the current tuple at dynamically chosen points in the code based on stream size. (that would be really cool!)

It needs a code server! Currently, main modules are compiled as an Erlang module and run with `xqerl_main:main(Options)`.
This is okay for debugging and test suites I guess, but not cool at all for a running system!

It uses the process dictionary for too much of the "static" information. This will make multi-process streaming a pain.

No real concept for saving XML documents and other resources. Will most likely become mnesia, or some other well-established Erlang-based key/value store.

Text is handled as a "string" and not a binary; yet.

The XDM is kind of rough. Should possibly be made a positional binary format for quick random access. 

Integer/Date formatting is only partially implemented (fn:format-number is implemented).

<s>There is no concept of negative-zero (but who cares right?) (ok, I do... coming soon).</s> Fixed.

... and most likely many more things ...

