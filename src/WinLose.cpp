#include <string>

using namespace std;

int WinLose(
        string* V2,
        string* V3,
        string* List1,
        string* List2,
        int* win,
        int* lose,
        int* count)
{
    if (*V2 == *List1 || *V3 == *List2) {
        *win += 1;
        *count += 1;
    } else {
        *lose += 1;
        *count += 1;
    }
}