g = g++
CFLAGS = -c -Wall -Werror

.PHONY: clean run all test

all: IregV test

bin/source: build/src/IregV.o build/src/FirstTest.o build/src/SecondTest.o build/src/ThirdTest.o build/src/Menu.o build/src/CheckWord.o 
		$(g) $^ -o $@

build/src/IregV.o: build/src/IregV.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/Menu.o: build/src/Menu.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/CheckWord.o: build/src/CheckWord.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/FirstTest.o: build/src/FirstTest.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/SecondTest.o: build/src/SecondTest.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/ThirdTest.o: build/src/ThirdTest.cpp
		$(g) $(CFLAGS) $^ -o $@

GCheckWord_DIR = thirdparty/googletest

test: testlib bin/source-test

testlib:
	g++ -std=c++17 -isystem ${GCheckWord_DIR}/include -I${GCheckWord_DIR} \
    -pthread -c ${GCheckWord_DIR}/src/gCheckWord-all.cc -o build/CheckWord/gCheckWord-all.o
	ar -rv build/CheckWord/libgCheckWord.a build/CheckWord/gCheckWord-all.o

bin/source-test: build/CheckWord/IregV.o build/src/CheckWord.o build/src/source.o build/src/Menu.o
	g++ -std=c++17 -isystem ${GCheckWord_DIR}/include -pthread $^ \
	build/CheckWord/libgCheckWord.a -o $@

build/test/test.o:
	$(g) -std=c++17 $(CFLAGS) CheckWord/IregV.cpp -I $(GCheckWord_DIR)/include -o $@

run:
		bin/source

runCheckWord:
		bin/source-test

clean:
		rm -rf build/src/*.o

cleanCheckWord:
		rm build/test/*.o