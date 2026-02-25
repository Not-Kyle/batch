#include <stdio.h>
#include <stdbool.h> // Bool header file

int x = 5, y = 5;
bool isEqual = false;

bool checkEqual(int x, int y) {
    if (x == y) {
        isEqual = true;
    }

    return isEqual;
}

int main(void) {
    bool checker = checkEqual(x, y);
    printf("Checker: %d\n", checker);
    printf("Checker String: %s", checker ? "true" : "false");
    return 0;
}
