#include <iostream>

using namespace std;

int main() {
    double num1, num2;
    
    cout << "Enter the first number: ";
    cin >> num1;
    
    cout << "Enter the second number: ";
    cin >> num2;
    
    double average = (num1 + num2) / 2.0;
    
    cout << "The average is: " << average << endl;
    
    return 0;
}