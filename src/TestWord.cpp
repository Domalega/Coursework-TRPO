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
        cout << "�������� ������� ��������� �������� ����: ";
        cout << endl
             << "1. ������ (5 ����)" << endl
             << "2. ������� (10 ����)" << endl
             << "3. ������� (20 ����)" << endl
             << "4. ����� � ����" << endl
             << "5. ����� �� ���������" << endl;
        cout << "����� �������� ������ ��������� ����� ����� ������ ��������."
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
            cout << "������� �� ���������..." << endl;
            exit(0);
        }
    }
}