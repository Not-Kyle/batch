#define _WIN64

#include <iostream>
#include <windows.h>
using namespace std;

int main() {
	int SetMessage = MessageBox(NULL, L"Is it okay to continue?", L"Souljias.dll", MB_ICONWARNING | MB_OKCANCEL);

	if (SetMessage == IDOK) {
		cout << "Okay was selected" << endl;
	} else {
		cout << "Skipped" << endl;
	}

	return 0;
}

//https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox
