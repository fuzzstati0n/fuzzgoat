Welcome to Fuzzgoat
------------------------------------------

This C program has been deliberately backdoored with several memory corruption bugs to test the efficacy of fuzzers and other analysis tools.  

CAUTION: Do not copy any of this code - there is evil stuff in this repo.


Building
----------

Fuzzgoat builds with make:

`make all`


Running American Fuzzy Lop
--------------------------

With afl-fuzz in your PATH and a seed file in a directory called in/

`afl-fuzz -i in -o out ./fuzzgoat @@`


Thank You
---------
Fuzzgoat was adapted from udp/json-parser - we chose it because:

* Its not too big or cumbersome - ~1200 lines of C yet lots of paths for a fuzzer to dig into.
* Performance: its very fast at ~1500 execs per sec per core.
* The code is clean and very readable.

Fuzz Stati0n would like to thank the creators and maintainers of udp/json-parser. 
