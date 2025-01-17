#include <iostream>
#include <chrono>
#include <thread>

using namespace std;
using function = void;

function Wait(int Seconds) { //Must be an Int
	return this_thread::sleep_for(chrono::seconds(Seconds));
}

int main() {

	cout << "Waiting..." << endl;

	Wait(3);
	cout << "Success!";

	return 0;
}
