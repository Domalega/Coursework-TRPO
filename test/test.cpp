#define CATCH_CONFIG_MAIN
#include "../src/Menu.hpp"
#include "../src/TestWord.hpp"
#include "../src/FirstTest.hpp"
#include "../src/SecondTest.hpp"
#include "../src/ThirdTest.hpp"
#include "../src/Checkword.hpp"
#include "../src/WinLose.hpp"
#include "../thirdparty/catch.hpp"
#include <iostream>
#include <string.h>

using namespace std;
TEST_CASE("check FirstTest", "[WinLose]")
{
    string V2, V3, List1, List2;
    int count = 0, win = 0, lose = 0;
    WinLose(V2,V3,List1,List2,win,lose,count);
    REQUIRE(win==1)
}