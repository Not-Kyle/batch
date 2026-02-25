#include <stdio.h>

/*
 * Deep Dive of Pointers (Pointer Arithmetic)
 *
 * At Hardware level the CPU doesn't know what a variable name is. It only understands memory addresses. A pointer is a simply a variable that stores one of those addresses.
 * If a pointer is a map, dereferencing is actually pathing to the destination.
 *
 * In C, you use an asterisk to dereference.
 * The & symbol (Address-Of) Tells the CPU, do not give the value; give the memory address.
 * The * symbol (Dereferencing) Tells the CPU, Go to the memory address stored in the pointer and get whatever is inside.
 *
 * When you do Pointer + 1, the CPU doesn't just add one. It scales the jump based on the Data Type.
 * char *ptr: ptr + 1 moves 1 byte.
 * int *ptr: ptr + 1 moves 4 bytes
 * struct Player *ptr: ptr + 1 moves X amount of bytes depending on the size of the struct.
 *
 * Why?
 * If you are standing at the start of an array of Integers, the next Integer doesn't start at the very next byte; it starts 4 bytes later. The type of the pointer tells the CPU how big your steps are.
 *
 * The Scaling on pointers is Type-Aware
 * Formula: NewAddress = CurrentAddress + (n * sizeof(Type))
 * This allows pointers to navigate through Arrays and Heap blocks seamlessly.
 * Type Safely: Even though all pointers are the same size, the type tells the compiler how many bytes to read when dereferencing.
 *
 * Malloc Glass
 * malloc funds 100 bytes on the Heap
 * It returns the Address of the first byte.
 * You store that pointer onto the Stack.
 * You use pointer arithmetic to move through those 100 bytes.
 * You use dereferencing to write data into them.
 */

int main(void) {
    printf("Test");
    return 0;
}
