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
