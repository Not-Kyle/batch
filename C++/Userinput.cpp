#include <iostream>
using namespace std;

int main() {
    string X;
    cout << "debug: ";
    cin >> X;
    cout << "debugging: " << X;
}

// OR -- > getline() < --

#include <iostream>
#include <string>
using namespace std;

int main() {
	string AddCommand;
	cout << "Command: ";
	getline(cin, AddCommand); 
	cout << "Executing: " << AddCommand;
}

// getline() prints the entire string rather than how cin just prints the first word of the string
