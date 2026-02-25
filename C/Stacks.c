#include <stdio.h>

/*
 * What is a stack?
 * A stack is a region of RAM used to store data for functions
 *
 * When you call a function, you're creating what's called a stack frame.
 * Everytime you call a function, a new stack frame is pushed onto the stack.
 *
 * What happens inside the push?
 * When you call a function the CPU perform events to create that stack frame
 * It saves the return address, passes the functions arguments, and allocates local variables.
 * It moves the Stack Pointer to make room for all the variables you declared inside of that function/method.
 *
 * A Stack Pointer is a special CPU register, what happens is when you push. The SP moves down. In most architectures the stack grows toward lower memory address to reserve space.
 *
 * When the CPU "Pops" that stack frame it means the CPU hit that functions return.
 * It reverts the SP back to where it was before the function started.
 * The data is not deleted or zeroed out, the CPU just forgets its there.
 * After this the memory is considered free for the next function to overwrite.
 *
 * You can not return a pointer to a local variable in C
 * Why is this?
 * The C compiler thinks you know what you're doing, so it will let you return that pointer and your program will crash when you try to read that "garbage" memory.
 *
 * In simple terms.
 * The Stack: A region of memory managed by the CPU using a Stack Pointer.
 * Pushing: Occurs when a function is called, the space is reserved for local variables and the return address.
 * Popping: Occurs when a function returns, the Stack Pointer moves back effectively deleting the local variables by making that memory available to overwrite.
 *
 * Popping does NOT erase data. It just moves the pointer. This is why uninitialized variables in C often contain garbage data from previous functions.
 */

int main(void) {
    printf("Test");
    return 0;
}
