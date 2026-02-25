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

/*
 * Why static variables are the enemy of Multithreading.
 *
 * In the modern program sense, threads are like having multiple CPU's running through your code at the exact same time.
 * Since a static variable has a fixed memory address for the entire program, every thread that calls that function is fighting over the same piece of hardware.
 *
 * ASM Disaster
 * To the CPU VARIABLE++ is actually three steps
 * 1. Read: Go to the Data Segment address and load the value into the register.
 * 2. Add: Add one to that register (variable)
 * 3. Write: Store the new value back into the Data Segment address.
 *
 * Thread Collision.
 * Thread A: Reads the value, example 10
 * Thread B: Reads the same value 10 before Thread A can write it back.
 * Thread A adds one and writes 11
 * Thread B add one and writes 11
 *
 * This called Race Condition.
 * Race Condition is when multiple threads perform the Read-Modify-Write cycle on the same static address at the same time, leading to data corruption.
 *
 * Why local variables are naturally Thread Safe.
 * Every thread gets its own Stack.
 *
 * When Thread A calls a function, it pushes a stack frame onto its Stack.
 * When Thread B calls the same function, it pushes a stack frame onto its own separate stack.
 * Both threads never touch each others variables.
 *
 * In C++ you will encounter Signleton Pattern. These are almost always built using static variables. If you don't account for threads, your single object will get corrupted the moment two parts of your program try to use it at once.
 */

int main(void) {
    printf("Test");
    return 0;
}
