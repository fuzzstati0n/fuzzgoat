CC=afl-gcc
DEPS=main.c fuzzgoat.c
ASAN=-fsanitize=address
CFLAGS=-I.
LIBS=-lm

all: $(DEPS)
	$(CC) -o fuzzgoat $(CFLAGS) $^ $(LIBS)

asan: $(DEPS)
	$(CC) $(ASAN) -o fuzzgoat $(CFLAGS) $^ $(LIBS)

.PHONY: clean

clean:
	rm ./fuzzgoat
