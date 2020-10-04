all:
    g++ TRPO_project.cpp -o TRPO_project
    
    TRPO_project test

TRPO_project: ./build/src/IregV.o ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o ./build/src/TestWord.o  ./build/src/Checkword.o ./build/src/ThirdTest.o
    g++ -std=c++17 ./build/src/IregV.o ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o ./build/src/TestWord.o  ./build/src/Checkword.o /build/src/ThirdTest.o -o ./bin/TRPO_project


./build/src/IregV.o: ./src/IregV.cpp
    g++ -std=c++17 -c ./src/IregV.cpp -o ./build/src/IregV.o 

./build/src/Menu.o: ./src/Menu.cpp
    g++ -std=c++17 -c ./src/Menu.cpp -o ./build/src/Menu.o 
./build/src/Checkword.o: ./src/Checkword.cpp
    g++ -std=c++17 -c ./src/Checkword.cpp -o ./build/src/Checkword.o 

./build/src/TestWord.o: ./src/TestWord.cpp
    g++ -std=c++17 -c ./src/TestWord.cpp -o ./build/src/TestWord.o 

./build/src/FirstTest.o: ./src/FirstTest.cpp
    g++ -std=c++17 -c ./src/FirstTest.cpp -o ./build/src/FirstTest.o 

./build/src/SecondTest.o: ./src/SecondTest.cpp
    g++ -std=c++17 -c ./src/SecondTest.cpp -o ./build/src/SecondTest.o 
    
./build/src/ThirdTest.o: ./src/ThirdTest.cpp
    g++ -std=c++17 -c ./src/ThirdTest.cpp -o ./build/src/ThirdTest.o 

clean:
    rm -rf ./build/src/*.o ./build/test/*.o ./bin/*.exe

test:  ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o /build/src/ThirdTest.o ./build/src/TestWord.o  ./build/src/Checkword.o ./build/test/test.o
    g++ -std=c++17 -o ./bin/test ./build/src/Menu.o ./build/src/FirstTest.o ./build/src/SecondTest.o /build/src/ThirdTest.o ./build/src/TestWord.o  ./build/src/Checkword.o  ./build/test/test.o 
    ./bin/test

./build/test/test.o: ./test/test.cpp
    g++ -std=c++17 -c ./test/test.cpp  -o  ./build/test/test.o 