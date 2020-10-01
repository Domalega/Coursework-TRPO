#include <iostream>
#include <string>
#include <algorithm>
#include "CheckWord.hpp"
#include "Menu.hpp"
#include "FirstTest.hpp"
#include "SecondTest.hpp"
#include "ThirdTest.hpp"


using namespace std;
int TestWord(string* ListI[], string* ListV2[], string* ListV3[], string* ListT[], int* listShuffle[]) {
	string Test;
	while (true) {
		for (int i = 0; i < 120; i++)
			*listShuffle[i] = i + 1;
		random_shuffle(listShuffle, listShuffle + 120);
		cout << "Выберите уровень сложности проверки слов: ";
		cout << endl << "1. Легкий (5 слов)" << endl << "2. Средний (10 слов)" << endl << "3. Сложный (20 слов)" << endl << "4. Выйти в меню" << endl << "5. Выход из программы" << endl;
		cout << "Слова вводятся нижним регистром через ентер каждый отдельно." << endl;
		cin >> Test;
		if (Test == "1") {
			FirstTest(ListI, ListV2, ListV3, ListT, listShuffle);
			system("pause");
			continue;
		}
		if (Test == "2") {
			SecondTest(ListI, ListV2, ListV3, ListT, listShuffle);
			continue;
		}

		if (Test == "3") {
			ThirdTest(ListI, ListV2, ListV3, ListT, listShuffle);
			continue;
		}

		if (Test == "4") {
			system("cls");
			Menu();
		}

		if (Test == "5") {
			system("cls");
			cout << "Выходим из программы..." << endl;
			exit(0);
		}
	}
}