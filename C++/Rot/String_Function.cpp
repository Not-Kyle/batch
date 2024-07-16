#include <iostream>
#include <string>

std::string WANTED_U{ "Executed" };

std::string LA() {
    std::string ILLSEEYOUIN40{ };

    std::cout	<< "Add Command: ";

    std::cin	>> ILLSEEYOUIN40;

    return ILLSEEYOUIN40;
}

int main() {
    std::string Input{ LA() };

    std::cout   << WANTED_U << ": " << Input;
    return 0;
}
