# xqerl
Erlang XQuery 3.1 Processor

This is a currently a draft/proof-of-concept. Please don't try to use it for "real" computing (yet)!

It is passing about 93% its (~25k) test cases. The other 7% are mainly functions that have not been 
implemented, and tests that rely on decimal precision.


### Features it has:

* Module Feature
* Higher-Order Function Feature

### Features it does not have, but might later:

* XQuery Update Facility
* Schema Aware Feature
* Typed Data Feature
* Static Typing Feature (only maybe, the static errors this creates are somewhat annoying)
* Serialization Feature

### Using

There is no real API to speak of yet, only debugging/testing functions. 

But, to run some XQuery you can use `xqerl:compile(FileName)` for library modules. 
`xqerl:run(String)` to compile and run a main module from a string.

The output from the main module will be in an internal format understood by xqerl. 

To see what it would look like as XML or text, the debugging function `xqerl_node:to_xml(Response)` can be used.

### Building
The normal way :) but there are .xrl for leex and .yrl for yecc.
I am using eclipse, so there is currently no makefile.

### Contributing
Yes, please. I've been doing it alone, so any help is much appreciated.


### Known problems and TODO's:

Regex is hacked together (fn:matches, fn:replace, etc.). 
To make it 100% will take building a regex parser that rewrites XML Schema regex into Erlang-known flavor. 

Query rewrite and optimization phases are still missing.

Data flow uses iterators, this should change to tail-recursive functions.

It needs a code server! Currently, main modules are compiled as an Erlang module and run with `xqerl_main:main(Options)`.
This is okay for debugging and test suites I guess, but not cool at all for a running system!

It uses the process dictionary for "static" information (nasty).

No real concept for saving XML documents and other resources. Will most likely become mnesia.

Text is handled as string and not binary, yet.

The XDM is a kind of rough. Should possibly be made a positional binary format for quick random access. 

The JSON functions are not implemented at all yet.

Number formatting is only partially implemented.

The xs:decimal does not work correctly. It will lose precision. (1.1 + 2.2 =/= 3.3)

There is no concept of negative-zero (but who cares right?).

... and most likely many more things ...

