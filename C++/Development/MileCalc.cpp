// MileCalc.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <cmath>
#include <cstdlib>
#include <string>

float getUserInput(std::string route) {
    float addedCommand{};

    std::cout << route;
    std::cin >> addedCommand;

    return addedCommand;
}

int main() {
    char answer{};
    const char y{ 'y' }, n{ 'n' };
    float Time{}, moreTime{};
    [[maybe_unused]] std::string Hours{ " Hour(s)" }, Minutes{ " Minute(s)" };

    float getMiles{ getUserInput("Enter Miles: ") };
    float Miles{ getMiles };
        
    float getSpeed{ getUserInput("Enter Speed: ") };
    float Speed{ getSpeed };

    std::cout << "Is there multiple roads? [y,n]: ";
    std::cin >> answer;

    if (answer == y) {
        float getExtraMiles{ getUserInput("Enter Miles: ") };
        float extraMiles{ getExtraMiles + Miles };

        float getExtraSpeed{ getUserInput("Enter Speed: ") };
        float extraSpeed{ getExtraSpeed + Speed };

        Time = Miles * 1 / Speed;
        float getTime{ Time * 60 };

        moreTime = extraMiles * 1 / extraSpeed;
        float addTime{ getTime + moreTime * 60 };

        if (addTime >= 61) {
            float getHours{ addTime / 60 };
            std::cout << "Takes " << getHours << Hours;
        }
        else if (addTime <= 60) {
            std::cout << "Takes " << floor(addTime) << Minutes;
        }

    } else if (answer == n) {

        Time = Miles * 1 / Speed;
        float getTime{ Time * 60 };

        if (getTime >= 61) {
            float getHours{ getTime / 60 };
            std::cout <<    "Takes " << getHours << Hours;
        } else if (getTime <= 60) {
            std::cout <<    "Takes " << floor(getTime) << Minutes;
        }
    }

    return EXIT_SUCCESS;
}
