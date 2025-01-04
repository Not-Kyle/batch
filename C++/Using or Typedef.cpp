#include <iostream>
#include <string>
#include <cstdlib>

typedef std::string SetString;
using SetFloat = float;

int main() {
    SetFloat SetVelocity { 0.171 };
    SetString CallbackVelocity { "[Velocity]: " };

    std::cout << CallbackVelocity << SetVelocity;
    return EXIT_SUCCESS;
}
