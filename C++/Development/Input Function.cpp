#include <iostream>
#include <cstdlib>
#include <string>

int userInput() {
    int inputNum{ };

    std::cout   << "Enter Port: ";
    std::cin    >> inputNum;

    return inputNum; // Returns the entered number (inputNum)
}

int main() {
    int inputHost{ userInput() };

    std::cout   << "Executed Host: " << inputHost;

    return EXIT_SUCCESS;
}
