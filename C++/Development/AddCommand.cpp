#include <iostream>
#include <string>
#include <cstdlib>
#include <fstream>

[[maybe_unused]] char colonSpaced[]{ ": " }, letterF{ 'f' };
std::string hostCommand{ "fuhrer" }, commandAbbreviated{ "uhrer" };
bool isOn{}, isTrue{ true };

std::string getUserInput(std::string route) {
    std::string addedCommand{};

    std::cout << route;
    getline(std::cin, addedCommand);

    return addedCommand;
}

std::string writeFile(std::string fileName, std::string fileText) {
    std::ofstream makeFile{ fileName };

    makeFile << fileText;
    makeFile.close();

    return EXIT_SUCCESS;
}

int main() {
    std::string getCommand{ getUserInput("Enter Command: ") };

    if (getCommand == hostCommand) {
        isOn = true;
        if (isOn) {
            std::cout << (char)toupper(letterF) << commandAbbreviated << " is now true";
            writeFile("reinhard.java",
                "public class reinhard {\n\t"
                    "public static void main(String[] args) {"
                        "\n\t\tSystem.out.println(\"Writing File\");"
                    "\n\t}"
                "\n}"
            );
        }
    }
    else if (getCommand != hostCommand) {
        std::cout << "Not a local command";
        return EXIT_FAILURE;
    }
    else {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

//reinhard heydrich
