CC = gcc
CCFLAGS = -std=gnu99 -Wall -O0 -no-pie

LDFLAGS = -L. -ldebug

EXECUTABLES = \
	bib_manual \
	traced_test \
	test_bib_manual \
	zero \
	test_bib_manual2


.PHONY: all clean test_bp_use_lib 
#test_bib_manual

all: $(EXECUTABLES)

libdebug.a: debuglib.c debuglib.h
	$(CC) $(CCFLAGS) -O -c debuglib.c
	ar rcs libdebug.a debuglib.o

bib_manual: bib_manual.c libdebug.a
	$(CC) $(CCFLAGS) $< -o $@ $(LDFLAGS)

test_bib_manual: bib_manual traced_test
	./bib_manual traced_test 0x$(ADDR)


traced_test: traced_test.c
	$(CC) $(CCFLAGS) $^ -o $@

zero: zero.c
	$(CC) $(CCFLAGS) $^ -o $@
	
test_bib_manual2: bib_manual zero
	./bib_manual zero 0x$(ADDR1)
	

clean:
	rm -f $(EXECUTABLES) *.o *.a
