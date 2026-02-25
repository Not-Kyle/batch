#include <stdio.h>
#include <stdlib.h>

/*
 * This an example of a memory leak.
 */

int year = 2026;

void create_leak() {
    int *year_ptr = (int *)malloc(year * sizeof(int)); // Stored on the stack

    if (year_ptr == NULL) {
        return;
    }

    // free is never used in this function, after its called it stays in RAM with no one able to access it
}

/*
 *In the function above if we were to do *year_ptr += 1, instead of adding 1 to the address it does 1 times the size of the type which is an int (4 bytes)
 *This is even worse if we use free() as it would do nothing, the program would still crash.
 *
 *Why?
 *
 *free function only works if you give it the exact same address that malloc gave you.
 *If malloc gave you 0x100 address, doing ptr += 1, it now 0x104, thus making free ineffective.
 */

/*
 * How this works in near ASM terms
 * Pushes the Stack Frame, Sets aside space for *year_ptr
 * Jumps to malloc. Malloc talks to the kernal to move the program break.
 * Malloc writes the size of the block (8104 bytes) into a hidden header at address 0x0F8 just before the memory gives it to you.
 * Modification, the code changes the value insde the year_ptr register on the stack.
 * Leak. The function hits the closing bracket. The Stack Pointer moves back. The value 0x104 is reverted from the stack.
 * The result is the 8KB heap is still marked "In Use" but no variable in your program knows the address 0x100 anymore, thus making a 8KB memory leak.
 */

int main(void) {
    create_leak();
    return 0;
}
