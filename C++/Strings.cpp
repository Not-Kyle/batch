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

// -- > Access < -- \\

    #include <iostream>
    #include <string>
    using namespace std;
    
    int main() {
        string X = "THREE";
        cout << "CMD: " << X << endl << X[0]; // Prints out the first letter of the string
        return 0;
    }

// OR

    #include <iostream>
    #include <string>
    using namespace std;
    
    int main() {
        string X = "THREE";
        cout << "CMD: " << X[X.size() - 5]; // or length
        return 0;
    }

// -- > Change Characters or Print Characters < -- \\

    #include <iostream>
    #include <string>
    using namespace std;
    
    int main() {
        string X = "THREE";
        X[1] = 'E'; // Changes H
        cout << "CMD: " << X; // Outputs TEREE
        return 0;
    }

// OR 

    #include <iostream>
    #include <string>
    using namespace std;
    
    int main() {
        string X = "THREE";
        X.at(1) = 'L'; // Changes H to L
        cout << "CMD: " << X;
        return 0;
    }

 // Prints Single Characters

    #include <iostream>
    #include <string>
    using namespace std;
    
    int main() {
        string X = "THREE";
        cout << "CMD: " << X.at(1); // Outputs H
        return 0;
    }
