/*
  Initialized = The object is given a known value at the point of definition.
  Assignment = The object is given a known value beyond the point of definition.
  Uninitialized = The object has not been given a known value yet.
*/
#include <iostream>

int main() {
  int A = {1}; //Initalized
  int B; //Assignment
  B = {2}
  int C; //Uninitialized
}
