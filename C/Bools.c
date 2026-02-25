#include <stdio.h>
#include <stdbool.h> // Bool header file

int x = 5, y = 5;
bool isEqual = false;

bool checkEqual(int x, int y) {
    if (x == y) {
        isEqual = true;
    }

    return isEqual;
} // This could be scaled down with a ternary operator but here just for show.

int main(void) {
    bool checker = checkEqual(x, y); // Common knowledge but without this, the print functions would call the function twice leading to redundancy.
    
    printf("Checker: %d\n", checker);
    printf("Checker String: %s", checker ? "true" : "false");
    return 0;
}
