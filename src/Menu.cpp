#include <iostream>
#include <string>
#include "CheckWord.hpp"
#include "TestWord.hpp"
#include "Arrayes.hpp"

using namespace std; 

void Menu(string* ListI[], string* ListV2[], string* ListV3[], string* ListT[], int* listShuffle[]) {
menu:
	string Word;
	cout << "Введите номер пункта, который хотите выбрать." << endl << endl;
	cout << "1. Проверка слова" << endl << "2. Тест" << endl << "3. Cписок неправильных глаголов" << endl << "4. Выход из программы" << endl << endl;
	cin >> Word;
	if (Word == "1") {
		system("cls");
		CheckWord(ListI, ListV2, ListV3, ListT, listShuffle);
	}

	if (Word == "2") {
		system("cls");
		TestWord(ListI, ListV2, ListV3, ListT, listShuffle);
	}

	if (Word == "3") {
		string F;
		system("cls");
		cout << "Список неправильных глаголов: " << endl;
		for (int i = 0; i < 120; i++)
			cout << ListI[i] << " -- " << ListV2[i] << " -- " << ListV3[i] << " -- " << ListT[i] << endl;
		cout << endl;
		system("pause");
		system("cls");
		cout << endl << "1. Вернуться в меню" << endl << "2. Выйти из программы" << endl << endl;
		cin >> F;
		if (F == "1")
			system("cls");
		goto menu;

		if (F == "2") {
			system("cls");
			cout << "Выходим из программы..." << endl;
			exit(0);
		}
	}

	if (Word == "4") {
		system("cls");
		cout << "Выходим из программы..." << endl;
		exit(0);
	}

	else {
		system("cls");
		cout << "Ошибка ввода!" << endl;
		goto menu;
	}
}