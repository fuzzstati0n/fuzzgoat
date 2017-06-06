CC=afl-gcc
DEPS=main.c fuzzgoat.c
ASAN=-fsanitize=address
CFLAGS=-I.
LIBS=-lm

all: $(DEPS)
	$(CC) -o fuzzgoat $(CFLAGS) $^ $(LIBS)
	$(CC) $(ASAN) -o fuzzgoat_ASAN $(CFLAGS) $^ $(LIBS)

afl: fuzzgoat
	afl-fuzz -i in -o out ./fuzzgoat @@

.PHONY: clean

clean:
	rm ./fuzzgoat ./fuzzgoat_ASAN
