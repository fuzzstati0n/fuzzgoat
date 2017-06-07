Welcome to Fuzzgoat
===================

This C program has been deliberately backdoored with several memory corruption bugs to test the efficacy of fuzzers and other analysis tools. Each vulnerability is clearly commented in fuzzgoat.c. Under input-files/ are files to trigger each vulnerability.

CAUTION: Do not copy any of this code - there is evil stuff in this repo.


Install AFL (American Fuzzy Lop)
------------------------

While Fuzzgoat can be attacked using any fuzzer, we like AFL. To install it:

1. Download AFL: [http://lcamtuf.coredump.cx/afl/releases/afl-latest.tgz](http://lcamtuf.coredump.cx/afl/releases/afl-latest.tgz)

2. Build AFL with `make install`

3. See the AFL quick start guide for more info: [http://lcamtuf.coredump.cx/afl/QuickStartGuide.txt](http://lcamtuf.coredump.cx/afl/QuickStartGuide.txt) 


Building Fuzzgoat
----------

Fuzzgoat builds with make. With afl-gcc in your PATH:

`make`


Running AFL
--------------------------

With afl-fuzz in your PATH and a seed file in a directory called in/

`afl-fuzz -i in -o out ./fuzzgoat @@` 

or simply:

`make afl`


Thank You
---------
Contributor: Joseph Carlos 

Fuzzgoat was adapted from udp/json-parser - we chose it because:

* Its not too big or cumbersome - ~1200 lines of C yet lots of paths for a fuzzer to dig into.
* Performance: its very fast at ~1500 execs per sec per core.
* The code is clean and very readable.

Fuzz Stati0n would like to thank the creators and maintainers of udp/json-parser. 
