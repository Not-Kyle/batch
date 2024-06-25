// -- > USING \n < -- \\

#include <iostream>

int main(){
  std::cout << "Yes\n";
  std::cout << "No";
  return 0;
}

// -- > USING endl < -- \\

#include <iostream>
using namespace std;

int main(){
  cout << "Yes" << endl;
  cout << "No";
  return 0;
}

// OR

#include <iostream>

int main(){
  std::cout << "Yes" << std::endl;
  std::cout << "No"; return 0;
}

// -- > Space statements out like the tab key < -- \\

#include <iostream>

int main(){
  std::cout << "Yes\t";
  std::cout << "No";
  return 0;
}
// Output: Yes  No
