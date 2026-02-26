#include <stdio.h>
#include <stdlib.h>

void changeInteger(int *val);
int* getYear();

int main() {
    int currentYear = 2025; // Stored in the stack since it's in a function

    int *pCurrentYear = &currentYear; // Holds the currentYear memory address
    int *pSecondYear = getYear();

    changeInteger(pCurrentYear); // currentYear + 1

    if (pSecondYear != NULL) {
        printf("Year: %d\n", currentYear);
        printf("Heap Year: %d at Address: %p\n", *pSecondYear, pSecondYear);
        
        free(pSecondYear); // Free the heap memory
        pSecondYear = NULL; // Good practice to prevent "dangling pointers"
    }
    
    return 0;
}

void changeInteger(int *val) {
    (*val)++;

    /*
     * Must do (*ptr)++, using the brackets then ptr then plus one.
     *The complier sees the brackets first, goes inside and sees you're calling the ptr; adds one.
     * Without it, you're doing +1 to the memory address which would leak to memory leaks.
    */
}

int* getYear() {
    int *pCurrentYear = malloc(sizeof(int)); // Or 4

    if (pCurrentYear == NULL) {
        return NULL;
    }

    *pCurrentYear = 2026;
    return pCurrentYear;
}
