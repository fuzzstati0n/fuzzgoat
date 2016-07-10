Welcome to the Fuzzgoat Backdoor Challenge
------------------------------------------

This C program has been deliberately backdoored to test the efficacy of fuzzers and other analysis tools. 

CAUTION: Do not copy any of this code - there is evil stuff in this repo.


Building
----------

Compile with:

`afl-clang-fast -o fuzzgoat -I. main.c fuzzgoat.c -lm`

Replace `afl-clang-fast` with the compiler of your choice as appropriate for the fuzzer you are using.


Contributing
------------
Ever want to write a backdoor? Want a free Fuzz Stati0n t shirt? Clone the fuzzgoat repo, build it, back door it and send us a pull request. The first 5 accepted submissions will get a t shirt. Some guidelines:

* It should be neither too easy nor too hard for the fuzzer to trigger the back door.
* The back door can be as obvious or as obfuscated as you like.
* Include a test case which triggers the backdoor and crashes fuzzgoat.
* Please comment the code which constitutes the back door e.g. `// Deliberate backdoor`
* Let us know your t shirt size.
* Have fun - contact: support@fuzzstati0n.com with any questions or issues.

We recommend the AFL fuzzer available at: http://lcamtuf.coredump.cx/afl/


Thank You
---------
Fuzzgoat was adapted from udp/json-parser - we chose it because:

* Its not too big or cumbersome - ~1200 lines of C yet lots of paths for a fuzzer to dig into.
* Performance: its very fast at ~3000 execs / sec, fuzz runs complete very quickly.
* Json-parser proved very resilient to our fuzzing attacks. So any crashes seen will probably be one of the deliberate backdoors and not a memory bug in json-parser.
* The code is clean and very readable.

Fuzz Stati0n would like to thank the creators and maintainers of udp/json-parser. 
