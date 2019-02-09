# Getting Started with xqerl

## Step 1. Get Erlang/OTP

Erlang runs in a virtual machine, much like Java (only different).
You will need the VM installed. Instructions can be found [here](https://github.com/erlang/otp/blob/maint/HOWTO/INSTALL.md).

#### Windows

The installation couldn't be easier! Download the installer, install, run.

Running `werl.exe` should give you a shell that looks something like:

```
Erlang/OTP 20 [erts-9.2] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:10]

Eshell V9.2  (abort with ^G)
1>  
```
You're all set!

##### Windows 10
Cool thing about Windows 10 is that you can also run Linux natively using **Windows Subsystem for Linux**.
This means, you can install the Linux version of Erlang.

[Instructions](https://docs.microsoft.com/en-us/windows/wsl/about) can be found on the MS site.


#### Other Operating Systems
Just follow the build instructions above.


## Step 2. Get rebar3

Rebar3 is a build tool for Erlang. It will make getting xqerl running a breeze.

```
$ git clone https://github.com/erlang/rebar3.git
$ cd rebar3
$ ./bootstrap
```
Documentation can be found [here](https://www.rebar3.org/docs#section-installing-from-source).

Ensure that rebar3 is in your path to make stuff easier, or use the absolute path in the next step.


## Step 3. Get xqerl and compile it
```
$ git clone https://github.com/zadean/xqerl.git
$ cd xqerl
$ rebar3 compile
```

You'll see a few warnings about unused variables. (I'm working on it!!)


## Step 4. Start it

From the console that just compiled everything run:

 `rebar3 shell`

Initialize everything

From the erlang shell, run the following:

```erlang
(xqerl_node@some_machine)3> application:ensure_all_started(xqerl). 
```

This will initialize the database and also start the code server.

## Step 5. Start using it


##### Double-quotes must be escaped in the shell:

```erlang
(xqerl_node@some_machine)5> xqerl:run("xs:token(\"cats\"), xs:string(\"dogs\"), true() ").
[{xqAtomicValue,'xs:token',"cats"},
 {xqAtomicValue,'xs:string',"dogs"},
 {xqAtomicValue,'xs:boolean',true}]
```

##### Compile a main-query from file:

```erlang
(xqerl_node@some_machine)6> xqerl_module:compile("doc/src/sudoku2.xq").   
file____doc_src_sudoku2_xq
```

This returns the name of the compiled module. Don't write it down! ;-) Save it for later:

```erlang
(xqerl_node@some_machine)7> S = xqerl_module:compile("doc/src/sudoku2.xq").
```

<s>
Now run the XQuery with an empty context map:

```erlang
(xqerl_node@some_machine)8> S:main(#{}).
{xqNode,<0.257.0>,[1]}
```

Well, that's not very useful!

```erlang
(xqerl_node@some_machine)9> Xml = S:main(#{}).
(xqerl_node@some_machine)10> xqerl_node:to_xml(Xml).
"<html><head><title>Sudoku - XSLT</title><style>table { ...
```

Okay, that's better.

##### Load an XML file into the DB:

`xqldb_docstore:insert("./test/QT3-test-suite/app/FunctxFn/functx_order.xml").`

*NOTE: XQuery that uses `fn:doc` should currently be compiled with its absolute file path.*

and delete it again

`xqldb_docstore:delete("./test/QT3-test-suite/app/FunctxFn/functx_order.xml").`

##### Just-for-fun load an entire directory with lots of XML files:

`xqldb_parse:read_dir("./test/QT3-test-suite").`
</s>



