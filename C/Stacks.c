#include <stdio.h>

/*
 * What is a stack?
 * A stack is a region of RAM used to store data for functions
 *
 * When you call a function, you're creating what's called a stack frame.
 * Everytime you call a function, a new stack frame is pushed onto the stack.
 *
 * What happens inside the push?
 * When you call a function the CPU.
 *
 * The CPU automatically saves the address of the next instruction (return address)
 * After saving the return address, the CPU jumps to the first instruction of the called function. Execution is now inside of that function.
 *
 * Once inside the function, the compiler-generated code saves necessary registers.
 * Some CPU registers must be preserved across function calls. If the function plans to use them, it saves their previous values on the stack.
 *
 * The function may store the current stack position in a special register called the frame pointer.
 * Because the stack pointer moves as data is pushed and popped.
 * A frame pointer gives a stable reference point for accessing local variables.
 * Sometimes modern compilers will skip this for optimization.
 * 
 * The function then moves the stack pointer to reserve space.
 * This space is used for local variables, temporary values, spilled registers.
 * This is called a stack frame or the functions stack frame.
 *
 * A Stack Pointer is a special CPU register, what happens is when you push. The SP moves down. In most architectures the stack grows toward lower memory address to reserve space.
 *
 * When the CPU "Pops" that stack frame it means the CPU hit that functions return.
 * It reverts the SP back to where it was before the function started.
 * The data is not deleted or zeroed out, the CPU just forgets its there.
 * After this the memory is considered free for the next function to overwrite.
 *
 * You can return a pointer to a local variable, but it will result in unexpected behavior.
 * It appears to be correct on the outside but inside could corrupt memory, randomly break later, or print old values etc.
 * 
 * Why its wrong in-depth.
 * The local variables live inside the stack frame, when the function returns.
 * The stack pointer moves back, the memory is now considered free.
 * Future function calls may overwrite it.
 * 
 * Returning a pointer to a local variables results in unexpected behavior as the memory is no longer owned by that function
 *
 * Why is this?
 * The C compiler thinks you know what you're doing, so it will let you return that pointer and your program will crash when you try to read that "garbage" memory.
 *
 * In simple terms.
 * The Stack: A LIFO (Last-In-First-Out) region of memory managed by the CPU using a Stack Pointer.
 * Pushing: Occurs when a function is called, the space is reserved for local variables and the return address.
 * Popping: Occurs when a function returns, the Stack Pointer moves back effectively deleting the local variables by making that memory available to overwrite.
 *
 * Popping does NOT erase data. It just moves the pointer. This is why uninitialized variables in C often contain garbage data from previous functions.
 */

int main(void) {
    printf("Test");
    return 0;
}
