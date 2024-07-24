#include <iostream>
#include <string>
#include <cstdlib>
#include <fstream>

[[maybe_unused]] char colonSpaced[]{ ": " }, letterF{ 'f' }, letterW{ 'w' };
std::string hostCommand{ "writefile" };
[[maybe_unused]] bool isOn{}, isTrue{ true };

std::string getUserInput(std::string route) {
    std::string addedCommand{};

    std::cout << route;
    getline(std::cin, addedCommand);

    return addedCommand;
}

std::string writeFile(std::string fileName, std::string fileText) {
    std::ofstream makeFile{ fileName };

    if (!fileText.empty()) {
        makeFile << fileText;
        makeFile.close();
    } else {
        makeFile.close();
    }

    return EXIT_SUCCESS;
}

std::string readFile(std::string fileName) {
    std::string readFileText{ };
    std::ifstream getFile{ fileName };

    while (getline(getFile, readFileText)) {
        return readFileText;
    }

    getFile.close();
}

int main() {
    std::string getCommand{ getUserInput("Enter Command: ") };

    if (getCommand == hostCommand) {
        isOn = true;
        if (isOn) {
            std::cout << (char)toupper(letterW) << "rite" << (char)toupper(letterF) << "ile is now " << std::boolalpha << isOn;

            writeFile("Reinhard.java",
                "public class Reinhard {"
                    "\n\tpublic static void main(String[] args) {"
                        "\n\t\tSystem.out.println(\"Writing File\");"
                    "\n\t}"
                "\n}"
            );

            std::string getFilesContent{ readFile("Reinhard.java") };
            std::cout << getFilesContent;
        }
    } else if (getCommand != hostCommand) {
        std::cout << "Not a local command";
        return EXIT_FAILURE;
    } else {
        return EXIT_FAILURE;
    }


    return EXIT_SUCCESS;
}
