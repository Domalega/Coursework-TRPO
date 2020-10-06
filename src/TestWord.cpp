#include "CheckWord.hpp"
#include "FirstTest.hpp"
#include "Menu.hpp"
#include "SecondTest.hpp"
#include "ThirdTest.hpp"
#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;

int TestWord()
{
    string Test;
    while (true) {
        cout << "Выберите уровень сложности проверки слов: ";
        cout << endl
             << "1. Легкий (5 слов)" << endl
             << "2. Средний (10 слов)" << endl
             << "3. Сложный (20 слов)" << endl
             << "4. Выйти в меню" << endl
             << "5. Выход из программы" << endl;
        cout << "Слова вводятся нижним регистром через ентер каждый отдельно."
             << endl;
        cin >> Test;
        if (Test == "1") {
            FirstTest();
        }
        if (Test == "2") {
            SecondTest();
        }
        if (Test == "3") {
            ThirdTest();
        }
        if (Test == "4") {
            Menu();
        }
        if (Test == "5") {
            cout << "Выходим из программы..." << endl;
            exit(0);
        }
    }
}