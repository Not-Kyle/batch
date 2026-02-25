#include <stdio.h>

/*
 * What is "Heap"
 * Heap is manual memory, unlike Stack (which is automatic), you have to do everything yourself.
 *
 * Heap is primarily managed through two functions, "malloc" (memory allocation) and "free".
 *
 * Requesting Memory: When requesting memory you ask the C RUNTIME memory allocator for a specific number of bytes using malloc.
 * Malloc doesn't give you the variable. It gives you the pointer, the memory address to the start of that block.
 * The memory stays yours until you tell the OS you're done with it. It does not matter if the function that created it ends; the data remains.
 *
 * Since you're managing manual memory, you have to be responsible. If you lose the pointer to a piece of Heap memory without calling free, that memory is "leaked".
 * It stays reserved but unreachable until your program closes basically wasting space.
 *
 * Heap is managed by a memory allocator (Your software) that talks to the OS.
 * In low-level systems like UNIX the Heap starts right after your programs static data.
 *
 * Heap in a near ASM view, to get more memory. The C lib makes a system call like "brk" or "sbrk" to the OS kernal. It will tell the kernal to move the program break line further up in memory to give more room.
 * The space between the old break and the new break is your raw Heap.
 *
 * Modern Systems use nmap instead of brk or sbrk as these are legacy.
 *
 * malloc -> allocator -> nmap
 */

int main(void) {
    printf("Test");
    return 0;
}
