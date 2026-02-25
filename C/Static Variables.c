#include <stdio.h>

/*
 * Static Variables
 *
 * Variables that live in functions
 * These are a kind of variable that's scope is only visible like a local variable but has the lifespan of a global variable.
 * A static variable is not stored in the Stack, it's stored in the Data Segment.
 * It's initialized once, the very first time a function is called. Everytime the function is called the RAM will remember its value.
 *
 * How it works?
 *
 * The compiler sees a static variable and gives it a fixed memory address instead of just pushing it onto the Stack.
 * When you have a static variable in a function and add or subtract to it, any math will do. The compiler writes to the memory address and says to add 1 etc.
 *
 * Even though a static variable lives forever like a global, the Complier enforces a rule that only the function it belongs to is allowed to use its name.
 * In ASM a static variable looks exactly like a global variable. It's just a fixed address in RAM.
 *
 * Variables that live in your .c file
 * These variables are like scope static variables except they live in your .c file.
 * If you were to have two different .c files and both had the same variable name as; "static int words", it would not crash as they both have different memory addresses.
 */

int main(void) {
    printf("Test");
    return 0;
}
