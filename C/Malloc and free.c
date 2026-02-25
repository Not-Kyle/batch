#include <stdio.h>

/*
 * What is "malloc" && "free"
 * Memory allocation is the process of reserving a specific portion of a computers RAM for a program to store data.
 * You find a spot if your RAM and the RAM returns with a pointer, you use that space to deallocate.
 *
 * Static/Automatic Allocation (Stack)
 * Memory is reserved automatically by the compiler when a function starts.
 * Its fast and efficient because the size must be known compile-time.
 *
 * The function loses this memory allocation as soon as its over with (hits return)
 *
 * Dynamic Allocation (Heap)
 * Memory is requested by the programmer while the program is running (runtime).
 *
 * This is necessary when you don't know how much data you'll need until the program is alive.
 * You keep this allocation until you free it using (free).
 *
 * Everytime you allocate memory there is a four-step cycle.
 * Request: You ask for X bytes (malloc(sizeof(int)))
 * Reservation: The OS finds a block of memory and marks it as "In Use"
 * Access: You read and write to that memory using its memory address (pointer)
 * Release: This is called deallocation, you tell the OS you're done with the memory block, thus marking it as free.
 *
 * When memory is allocated the computer is not just giving you space.
 * The address malloc gives you isn't the physical address on the RAM chip. It's a virtual address the CPU and OS work together to map that address to a physical location.
 *
 * Broad definition of malloc: The process by which a computer program is assigned physical or virtual memory space for its execution and data storage.
 * Compile-Time vs Runtime: [
 *  Static Allocation: Happens before the program runs, fixed size and managed by the Stack.
 *  Dynamic Allocation: Happens during execution, flexible size and managed by the Heap via malloc.
 * ]
 *
 *  The pointer connection: In C, a successful allocation return a memory address. Without storing this address in a pointer, the allocated memory becomes a memory leak.
 *  Cost: Every allocation have overhead. The system must keep track of which bytes are used and which are free. Frequent small allocations can lead to fragmentation.
 *
 *  In C++ you rarely use malloc, you use new.
 *  The difference: Allocation in C++ if often combined with initialization. Malloc only allocates the bytes; C++'s "new" allocates the bytes and decorates the room.
 */

int main(void) {
    printf("Test");
    return 0;
}
