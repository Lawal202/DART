import 'dart:io';

// number 3
// Solving for maximum of three numbers


void main() {
print('Enter three numbers to find the largest');
print('Enter First number:');

double num1 = double.parse(stdin.readLineSync()!);

print('Enter Second number');
double num2 = double.parse(stdin.readLineSync()!); 

print('Enter Third number');
double num3 = double.parse(stdin.readLineSync()!);

double max = solveMax( num1,  num2, num3);

print("Maximum of $num1, $num2, $num3 is: $max");
}

double solveMax(double a, double b, double c){
  if (a >= b && b >= c){
    return a;
  }else if (b >= a && b >= c) {
    return b;
  }else {
    return c;
  }
}


//Number 24
//Basic calculator

// void main() {
//   while (true) {
//     print("Welcome to calculator");

//     print("enter first number");
//     double num1 = double.parse(stdin.readLineSync()!);

//     print("enter a basic operator like +,-,*,/");
//     var operation = stdin.readLineSync();

//     print("enter second number");
//     double num2 = double.parse(stdin.readLineSync()!);

//     if (operation == '+') {
//       print("$num1 + $num2 = ${num1 + num2}");
//     } else if (operation == '-') {
//       print("$num1 + $num2 = ${num1 - num2}");
//     } else if (operation == '*') {
//       print("$num1 + $num2 = ${num1 * num2}");
//     } else if (operation == '/') {
//       print("$num1 + $num2 = ${num1 / num2}");
//     }

//     print("press 0 to exit");
//     int input = int.parse(stdin.readLineSync()!);
//     if (input == 0) {
//       print(
//           "thank you");
//     } else {
//       print("invalid operation");
//     }
//     break;
//   }
// }



// Number 1 sum of two numbers


// void main() {

//   print("Enter the first number:");
//   double num1 = double.parse(stdin.readLineSync()!);

//   print("Enter the second number:");
//   double num2 = double.parse(stdin.readLineSync()!);

//   double sum = calculateSum(num1, num2);

//   print("The sum of $num1 and $num2 is: $sum");
// }

// double calculateSum(double a, double b) {
//   return a + b;
// }
