// -- > APPEND < -- \\

    #include <iostream>
    #include <string>
    using namespace std;
    
    int main() {
        string X = "X";
        string Y = "Y";
        X.append("!"); // Adds ! to the end of the string
        cout << "CMD: " << X;
        return 0;
    }
    
    // OR
    
    #include <iostream>
    #include <string>
    using namespace std;
    
    int main() {
        string X = "X";
        string Y = "Y";
        X.append(5, '!'); // Adds 5 ! to the end of the string
        cout << "CMD: " << X;
        return 0;
    }

// -- > LENGTH < -- \\

    #include <iostream>
    #include <string>
    using namespace std;
    
    int main() {
        string X = "THREE";
        cout << "CMD: " << X << endl << X.length();
        return 0;
    }

// OR

#include <iostream>
#include <string>
using namespace std;

int main() {
    string X = "THREE";
    cout << "CMD: " << X << endl << X.size();
    return 0;
}
