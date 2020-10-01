#include <iostream>
#include <string>
#include <cstdlib>
#include <iostream>
#include <locale.h>
#include <ctime>
#include "Menu.hpp"
#include "Arrayes.hpp"

using namespace std;

int main() {
	setlocale(LC_ALL, "Russian");
	srand(time(0));
	Menu(*ListI, string* ListV2[], string* ListV3[], string* ListT[], int* listShuffle[]);
	return 0;
}