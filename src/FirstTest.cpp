#include <iostream>
#include <string>
#include "Arrayes.hpp"

using namespace std;

int FirstTest(string* ListI[], string* ListV2[], string* ListV3[], string* ListT[], int* listShuffle[]) {
	int count = 0, win = 0, lose = 0;
	while (count != 5) {
		string V2, V3;
		cout << endl << *ListI[*listShuffle[count]] << endl << endl << "Введите оставшиеся формы неправильного глагола:" << endl;
		cin >> V2;
		cin >> V3;
		if (V2 == *ListV2[*listShuffle[count]] || V3 == *ListV3[*listShuffle[count]]) {
			win++;
			count++;
		}
		else {
			lose++;
			count++;
		}
	}
	cout << endl << win << " - Верных ответов" << endl << endl << lose << " - Неверных ответов" << endl;
	return win;
}