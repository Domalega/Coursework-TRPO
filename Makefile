g = g++
CFLAGS = -c -Wall -Werror

.PHONY: clean run all test

all:bin/source

bin/source: build/src/IregV.o build/src/FirstTest.o build/src/SecondTest.o build/src/ThirdTest.o build/src/Menu.o build/src/CheckWord.o 
		$(g) $^ -o $@

build/src/IregV.o: src/IregV.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/Menu.o: src/Menu.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/CheckWord.o: src/CheckWord.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/FirstTest.o: src/FirstTest.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/SecondTest.o: src/SecondTest.cpp
		$(g) $(CFLAGS) $^ -o $@

build/src/ThirdTest.o: src/ThirdTest.cpp
		$(g) $(CFLAGS) $^ -o $@

Gtest_DIR = thirdparty/googletest

test: testlib bin/source-test

testlib:
	g++ -std=c++17 -isystem ${Gtest_DIR}/include -I${Gtest_DIR} \
    -pthread -c ${Gtest_DIR}/src/gtest-all.cc -o build/test/gtest-all.o
	ar -rv build/test/libgCheckWord.a build/test/gCheckWord-all.o

bin/source-test: build/test/IregV.o build/src/test.o build/src/source.o build/src/Menu.o
	g++ -std=c++17 -isystem ${Gtest_DIR}/include -pthread $^ \
	build/test/libgtest.a -o $@

build/test/test.o:
	$(g) -std=c++17 $(CFLAGS) test/IregV.cpp -I $(Gtest_DIR)/include -o $@

run:
		bin/source

runCheckWord:
		bin/source-test

clean:
		rm -rf build/src/*.o

cleanCheckWord:
		rm build/test/*.o