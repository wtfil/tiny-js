CC=g++
CFLAGS=-g -Wall -DNDEBUG -O3
LDFLAGS=-g -rdynamic

SOURCES=  \
TinyJS.cpp \
TinyJS_Functions.cpp \
TinyJS_MathFunctions.cpp

OBJECTS=$(SOURCES:.cpp=.o)

all: run_tests Script

run_tests: run_tests.o $(OBJECTS)
	$(CC) $(LDFLAGS) run_tests.o $(OBJECTS) -o $@

tests:: clean run_tests
	./run_tests

Script: Script.o $(OBJECTS)
	$(CC) $(LDFLAGS) Script.o $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

example:
	$(CC) $(CFLAGS) tinyJS.cpp example/example.cpp -o example/example.o

.PHONY: example

clean:
	rm -f run_tests Script run_tests.o Script.o $(OBJECTS)
