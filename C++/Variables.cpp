#include <iostream>

int main(){
    int Age = 18;
    std::cout << Age;

    double Fast = 9.4; // A Float
    std::cout << Fast;

    char X = 'X';
    std::cout << X;

    std::string name = "Cory"; 
    std::cout << name;

    bool Reloading = false;
    std::cout << Reloading;

    Age = 17; // Age is now 17, Variables are changable
    std::cout << Age;
}

// -- > One Value to Many < -- \\ 

#include <iostream>

int main(){
    bool W, A, S, D;
    W = A = S = D = true;
    std::cout << W << std::endl << A << std::endl << S << std::endl << D;
}

// -- > Many Valiables < -- \\

#include <iostream>

int main(){
    double X = 9.2, Y = 13.7, Z = 50.4;
    std::cout << X << std::endl << Y << std::endl << Z;
}
