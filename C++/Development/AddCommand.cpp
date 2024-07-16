#include <iostream>
#include <string>
#include <cstdlib>

[[maybe_unused]] char colonSpaced[]{": "}, letterF{'F'};
std::string hostCommand{ "fuhrer" }, commandAbbreviated{"uhrer"};
bool isOn{};

std::string getUserInput(std::string route) {
    std::string addedCommand{};
    
    std::cout           << route;
    getline(std::cin, addedCommand);

    return addedCommand;
}

int main() {
    std::string getCommand{ getUserInput("Enter Command: ") };

    if (getCommand == hostCommand) {
        isOn = true;
        if (isOn) {
            std::cout   << (char)toupper(letterF) << commandAbbreviated << " is now true";
        }
    } else if (getCommand != hostCommand) {
        std::cout       << "Not a local command";
    } else {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

//reinhard heydrich
