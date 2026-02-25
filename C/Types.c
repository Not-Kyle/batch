#include <stdio.h>

int normalInts = 1;
double normalDoubles = 1;
float normalFloats = 1;
char normalChars = 'C';
char normalStrings[] = "Normal";

short int normalShorts = 1; // Short
unsigned short int normalUShorts = -1; // Only allows positives
long int normalLongs = 1; // Long
unsigned long int normalULongs = -1; // Only allows positives

long long int normalLLongs = -1; // Stores larger ints than what long can hold
unsigned long long int normalULLongs = -1; // Only allows positives

long double normalLongDoubles = 1;

/*
 * Unsigned types are great for bitwise operations like arithmetic shifting, shifting etc.
 * These values are also great for memory addresses, file sizes and other situations where a larger int is needed
 */

int main(void) {
    printf("Tester");
    return 0;
}
