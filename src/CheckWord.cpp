#include <iostream>
#include "Arrayes.hpp"
#include "Menu.hpp"
using namespace std;

int CheckWord(string* ListI[], string* ListV2[], string* ListV3[], string* ListT[], int* listShuffle[]) {
	string Check, a; // Check - слово которое нужно проверить , a - выбор выход/проверка
back:
	bool flag = false; // Проверка на нахождения слова в списке неправильных глаголов
	cout << "Введите слово которое хотите проверить. Слово должно быть написано на английском языке и шрифтом нижнего регистра." << endl << endl;
	cin >> Check;
	cout << endl;
	for (int i = 0; i <= 120; i++) {
		if (Check == *ListI[i]) {
			cout << *ListI[i] << " -- " << *ListV2[i] << " -- " << *ListV3[i] << " -- " << *ListT[i] << endl << endl;
			flag = true;
			break;
		}
	}
	if (!flag)
		cout << "Слово не является неправильным глаголом." << endl << endl;
back2:
	cout << "1. Проверить еще одно слово" << endl << "2. Выйти в меню" << endl << "3. Выйти из программы" << endl;
	cin >> a;
	if (a == "1") {
		system("cls");
		goto back;
	}

	if (a == "2") {
		system("cls");
		Menu(*ListI, ListV2, ListV3, ListT, listShuffle);
	}

	if (a == "3") {
		system("cls");
		cout << "Выходим из программы..." << endl;
		exit(0);
	}

	else {
		system("cls");
		cout << "Ошибка ввода!\n" << "Введите номер пункта!" << endl << endl;
		goto back2;
	}
	system("pause");
}

