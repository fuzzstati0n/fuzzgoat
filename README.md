This C program has been deliberately backdoored to test the efficacy of fuzzers and other analysis tools. 

CAUTION: Do not copy any of this code - there is evil stuff in this repo.


Installing
----------

Compile with:

`afl-clang-fast -o fuzzgoat -I. main.c fuzzgoat.c -lm`

Replace `afl-clang-fast` with the compiler of your choice as appropriate for the fuzzer you are using.


Contributing
------------




Thank You
---------
Fuzzgoat was adapted from udp/json-parser - we chose it because:

* Its not too big or cumbersome - ~1200 lines of C yet lots of paths for the fuzzer to dig into.
* Performance: its very fast at ~3000 execs / sec, fuzz runs complete much sooner.
* Json-parser proved very resilient to our fuzzing attacks. So any crashes seen will be a deliberate backdoor and not a memory bug in json-parser.
* The code is clean and very high quality.

We would like to thank the creators and maintainers of udp/json-parser. 
