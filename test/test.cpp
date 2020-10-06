#define CATCH_CONFIG_MAIN
#include "../src/CheckWord.hpp"
#include "../src/FirstTest.hpp"
#include "../src/Menu.hpp"
#include "../src/SecondTest.hpp"
#include "../src/TestWord.hpp"
#include "../src/ThirdTest.hpp"
#include "../src/WinLose.hpp"
#include "../src/Check1.hpp"
#include "../thirdparty/catch.hpp"
#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;
TEST_CASE("check WinLose", "[WinLose]")
{
    string V2 = "1", V3 = "1", List1 = "1", List2 = "1";
    int count = 0, win = 0, lose = 0;

    WinLose(&V2, &V3, &List1, &List2, &win, &lose, &count);
    REQUIRE(win == 1);
    REQUIRE(lose == 0);
}

TEST_CASE("check Check1", "[Check1]")
{
    string V2 = "1", V3 = "1", List1 = "1", List2 = "1";
    int i=1;

    Check1(&V2, &V3, &List1, &List2, &i)
    REQUIRE(flag==true);
}