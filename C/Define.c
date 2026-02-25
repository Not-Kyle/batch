#include <stdio.h>

#ifndef debug_print
#define debug_print(value) printf("%d\n", value)
#endif

/*
 * What is the point of #define?
 * RAM Efficiency: The preprocessor gives memory addresses names without consuming any space in RAM that typical variables take up
 * It allows you to include or exclude code based on your running OS in debug or release mode before the compiler even starts.
 * Code Injection: A macro can work for method types, instead of writing a bunch of methods that have different types. Write a macro
 * It eliminated method/function calling from the stack, which in earlier days of computing was very heavy on your CPU.
 *
 * Why it's out and outdated?
 * Macros have no scope, they are global and can cause name collisions.
 * Macros also have no type safety, the compiler can not check if the data makes sense until it's too late and crashes.
 */

int main(void) {
    debug_print(5);
    return 0;
}
