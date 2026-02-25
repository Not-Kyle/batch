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
 *In the function above if we were to do year_ptr += 1, instead of adding 1 to the address it does an arithmetic shift 1 times the size of the type which is an int (4 bytes)
 *This is even worse if we use free() as it would do nothing, the program would still crash.
 *
 *Why?
 *
 *free function only works if you give it the exact same address that malloc gave you.
 *If malloc gave you 0x100 address, doing ptr += 1, it now 0x104, thus making free ineffective.
 *
 * How it looks underneath
 * Why free(0x104) crashes while free(0x100) works. The function free takes your address 0x100 and subtracts the size of the header.
 * 0x100 - 8 = 0x0F8, it looks at 0x0F8 to see how many bytes it needs to release.
 * 
 * If you do it with 0x104 it does 0x104 - 8 = 0x0FC. 0x0FC does not exist, its just random data. The allocator gets confused, realizes the size there is nonsense and triggers an SIGABRT (Abort) to prevent memory corruption
 *
 */

/*
 * How this works in near ASM terms
 * Pushes the Stack Frame, Sets aside space for *year_ptr
 * Jumps to malloc. Malloc talks to the kernal to move the program break.
 * Malloc writes the size of the block (8104 bytes) into a hidden header at address 0x0F8 just before the memory gives it to you.
 * Modification, the code changes the value insde the year_ptr register on the stack.
 * Leak. The function hits the closing bracket. The Stack Pointer moves back. The value 0x104 is abandoned from the stack.
 * The result is the 8KB heap is still marked "In Use" but no variable in your program knows the address 0x100 anymore, thus making a 8KB memory leak.
 */

int main(void) {
    create_leak();
    return 0;
}
