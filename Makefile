all:IregV test

IregV: ./build/src/IregV.o ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o ./build/src/TestWord.o  ./build/src/Checkword.o ./build/src/ThirdTest.o
\tg++ -std=c++17 -o ./build/src/IregV.o ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o ./build/src/TestWord.o  ./build/src/Checkword.o ./build/src/ThirdTest.o ./bin/IregV

./build/src/IregV.o: ./src/IregV.cpp
\tg++ -std=c++17 -c ./src/IregV.cpp -o ./build/src/IregV.o

./build/src/Menu.o: ./src/Menu.cpp
\tg++ -std=c++17 -c ./src/Menu.cpp -o ./build/src/Menu.o
./build/src/Checkword.o: ./src/Checkword.cpp
\tg++ -std=c++17 -c ./src/Checkword.cpp -o ./build/src/Checkword.o

./build/src/TestWord.o: ./src/TestWord.cpp
\tg++ -std=c++17 -c ./src/TestWord.cpp -o ./build/src/TestWord.o

./build/src/FirstTest.o: ./src/FirstTest.cpp
\tg++ -std=c++17 -c ./src/FirstTest.cpp -o ./build/src/FirstTest.o

./build/src/SecondTest.o: ./src/SecondTest.cpp
\tg++ -std=c++17 -c ./src/SecondTest.cpp -o ./build/src/SecondTest.o

./build/src/ThirdTest.o: ./src/ThirdTest.cpp
\tg++ -std=c++17 -c ./src/ThirdTest.cpp -o ./build/src/ThirdTest.o

clean:
\trm -rf ./build/src/*.o ./build/test/*.o ./bin/*.exe

test:  ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o /build/src/ThirdTest.o ./build/src/TestWord.o  ./build/src/Checkword.o ./build/test/test.o
\tg++ -std=c++17 -o ./bin/test ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o /build/src/ThirdTest.o ./build/src/TestWord.o  ./build/src/Checkword.o  ./build/test/test.o ./bin/test

./build/test/test.o: ./test/test.cpp
\tg++ -std=c++17 -c ./test/test.cpp  -o  ./build/test/test.o
  
