#include <iostream>
#include <cstdlib>
#include <string>
#include <cmath>

float getUserInput(std::string route) {
    float addedCommand{};

    std::cout << route;
    std::cin >> addedCommand;

    return addedCommand;
}

float setGrade(float X, float Y) {
    return X / Y;
}

int main() {
    float getOverallGrade{ getUserInput("Overall Grade: ") };
    float overAll{ getOverallGrade };

    float getClientGrade{ getUserInput("Your Grade: ") };
    float clientGrade{ getClientGrade };

    float Result = setGrade(clientGrade, overAll);

    std::string setTrueResult = std::to_string(Result);
    size_t findDecimal = setTrueResult.find('.'); // Credits to someone on Stack Overflow

    if (findDecimal != std::string::npos && findDecimal == 1) {
        setTrueResult.erase(0, 1); // Deletes the 0
    }

    setTrueResult.erase(setTrueResult.begin() + 0); // Deletes the decimal
    setTrueResult.resize(2);

    std::cout << "Grade: " + setTrueResult << "%";

    return EXIT_SUCCESS;
}
