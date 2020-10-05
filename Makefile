all: ./bin/IregV_test 

./bin/IregV_test: ./build/src/IregV.o ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o ./build/src/TestWord.o  ./build/src/CheckWord.o ./build/src/ThirdTest.o ./build/src/WinLose.o
	g++ -std=c++17 -o ./build/src/IregV.o ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o ./build/src/TestWord.o  ./build/src/CheckWord.o ./build/src/ThirdTest.o ./build/src/WinLose.o 

./build/src/IregV.o: ./src/IregV.cpp
	g++ -std=c++17 -c ./src/IregV.cpp -o ./build/src/IregV.o

./build/src/Menu.o: ./src/Menu.cpp
	g++ -std=c++17 -c ./src/Menu.cpp -o ./build/src/Menu.o

./build/src/CheckWord.o: ./src/CheckWord.cpp
	g++ -std=c++17 -c ./src/CheckWord.cpp -o ./build/src/CheckWord.o

./build/src/TestWord.o: ./src/TestWord.cpp
	g++ -std=c++17 -c ./src/TestWord.cpp -o ./build/src/TestWord.o

./build/src/FirstTest.o: ./src/FirstTest.cpp
	g++ -std=c++17 -c ./src/FirstTest.cpp -o ./build/src/FirstTest.o

./build/src/SecondTest.o: ./src/SecondTest.cpp
	g++ -std=c++17 -c ./src/SecondTest.cpp -o ./build/src/SecondTest.o

./build/src/ThirdTest.o: ./src/ThirdTest.cpp
	g++ -std=c++17 -c ./src/ThirdTest.cpp -o ./build/src/ThirdTest.o

./build/src/WinLose.o: ./src/WinLose.cpp
	g++ -std=c++17 -c ./src/WinLose.cpp -o ./build/src/WinLose.o

clean:
	rm -rf ./build/src/*.o ./build/test/*.o ./bin/*.exe

test:  ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o /build/src/ThirdTest.o ./build/src/TestWord.o  ./build/src/CheckWord.o /build/src/WinLose.o ./build/test/test.o
	g++ -std=c++17 -o ./bin/test ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o /build/src/ThirdTest.o ./build/src/TestWord.o  ./build/src/CheckWord.o ./build/src/WinLose.o ./build/test/test.o 

./build/test/test.o: ./test/test.cpp
	g++ -std=c++17 -c ./test/test.cpp  -o  ./build/test/test.o