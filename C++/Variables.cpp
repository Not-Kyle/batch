// int : stores any whole number
// float : stores numbers up to 7 decimal points
// double : stores numbers up to 15 decimal points
// bool : boolean
// char : stores a character/letter
// string : string

#include <iostream>
#include <string>

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

// -- > Direct and Uniform Initialization < -- \\

#include <iostream>
using namespace std;

int main() {
	int Z = {10}; // Uniform
	int X(8); // Direct
	cout << Z << endl << X;
	return 0;
}

// -- > [[maybe_unused]] < -- \\
// C++17

#include <iostream>
using namespace std;

int main() {
	int Z = { 10 };
	[[maybe_unused]] int Age = { 18 };
	const double Range = { 4.95 };
	cout << Z << "\n" << Range;
	return 0;
}

// [[maybe_unsed]] is to tell the console that this variable will likely not be used, too many variables without this keyword could bug or cause issues
