#include <iostream>

int one{ 1 }, two{ 2 }, three{ 3 }, four{ 4 }, five{ three + two };

int returnFive() {
    return five;
}

int main() {
    int uniformFive{ returnFive() };

    std::cout << uniformFive;
    return 0;
}

// Arguments

#include <iostream>
#include <cstdlib>
#include <cmath>
//         Arg 1 v           Arg 2 v      Arg 3 v
int Math(std::string method, int first, int second) {
    if (method == "Addition") {
	    return	first + second;
		
    } else if (method == "Subtraction") {
	    return	first - second;

    } else if (method == "Multiplication") {
	    return	first * second;

    } else if (method == "Division") {
	    return	first / second;

    } else {
	    return	EXIT_FAILURE;
    }
}

int main() {
    std::cout   << Math("Multiplication", sqrt(6), 4);
    return		EXIT_SUCCESS;
}

// Forward Declartion OR Function Prototype

#include <iostream>
#include <cstdlib>
#include <cmath>

int five{ 5 }, seven{ 7 };

int orbit(float firstNumber, double secondNumber); // Declaring the function

int main() {

    std::cout   << orbit(five, seven) << std::endl; // Using the function
    return		EXIT_SUCCESS;
}

int orbit(float firstNumber, double secondNumber) { // The body of the function

    return round(log(firstNumber) * secondNumber);
}

// Or

#include <iostream>
#include <cstdlib>
#include <cmath>

int five{ 5 }, seven{ 7 };

int orbit(float, double); // You do not have to phrase the names of the arguments yet

int main() {

    std::cout   << orbit(five, seven) << std::endl; // Using the function
    return		EXIT_SUCCESS;
}

int orbit(float firstNumber, double secondNumber) { // The body of the function

    return round(log(firstNumber) * secondNumber);
}
