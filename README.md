# xqerl
Erlang XQuery 3.1 Processor

This is a currently a draft/proof-of-concept. Please don't try to use it for "real" computing (yet)!

It is passing 97.5% its (~29k) test cases. The other ~2.5% are mainly functions that have not been 
implemented, regex, and UCA string collation related things.


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

But, to run some XQuery you can use `xqerl_module:compile(FileName)` for library modules. 
`xqerl:run(String)` to compile and run a main module from a string.

The output from the main module will be in an internal format understood by xqerl. 

To see what it would look like as XML or text, the debugging function `xqerl_node:to_xml(Response)` can be used.

### Testing
<s>The test suites use absolute paths for files. To run the tests locally, you can rebuild them using the XQuery script test/~test-case-builder.xq.</s> 

### Building
The normal way :) but there are .xrl for leex and .yrl for yecc to build.
I am using eclipse, so there is currently no makefile or rebar config (coming soon).

### Contributing
Yes, please. I've been doing it alone, so any help is much appreciated.


### Known problems and TODO's:

<s>Regex is hacked together (fn:matches, fn:replace, etc.). 
To make it 100% (or even close) will take building a regex parser that rewrites XML Schema regex into one of the Erlang-known flavors.</s>
Regex is missing the concept of range subtraction. This accounts for 10% of test case errors. 

Query rewrite and optimization phases are still missing.

Streaming the variable tuple. Process to process message passing of the current tuple at dynamically chosen points in the code based on stream size. (that would be really cool!)

<s>It needs a code server! Currently, main modules are compiled as an Erlang module and run with `xqerl_main:main(Options)`.
This is okay for debugging and test suites I guess, but not cool at all for a running system!</s>


It uses the process dictionary for too much of the "static" information. This will make multi-process streaming a pain.

<s>No real concept for saving XML documents and other resources. Will most likely become mnesia, or some other well-established Erlang-based key/value store.</s>

Text is handled as a "string" and not a binary; yet.

<s>The XDM is kind of rough. Should possibly be made a positional binary format for quick random access.</s> 

Integer/Date formatting is only partially implemented (fn:format-number is implemented).

<s>There is no concept of negative-zero (but who cares right?) (ok, I do... coming soon).</s> Fixed.

... and most likely many more things ...

