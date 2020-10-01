#include <locale.h>
#include "Menu.hpp"

using namespace std;

int main() {
	setlocale(LC_ALL, "Russian");
	Menu();
	return 0;
}