import 'dart:io';

void main() {
  while (true) {
    print("WELCOME \n lets try some easy calculations");

    print("enter first number");
    double num1 = double.parse(stdin.readLineSync()!);

    print("enter a basic operator like +,-,*,%,/,^");
    var operation = stdin.readLineSync();

    print("enter second number");
    double num2 = double.parse(stdin.readLineSync()!);

    print("enter a basic operator like +,-,*,%,/,^");
    var operations = stdin.readLineSync();

    print("enter third number");
    double num3 = double.parse(stdin.readLineSync()!);

    if (operation == '+') {
      print("$num1 + $num2 = ${num1 + num2}");
    } else if (operation == '-') {
      print("$num1 + $num2 = ${num1 - num2}");
    } else if (operation == '*') {
      print("$num1 + $num2 = ${num1 * num2}");
    } else if (operation == '%') {
      print("$num1 + $num2 = ${num1 % num2}");
    } else if (operation == '/') {
      print("$num1 + $num2 = ${num1 / num2}");
    } else if (operations == '+ and *') {
      print("$num1 *($num2 + $num3) = ${num1 * (num2 + num3)}");
    } else {
      print("invalid operations \n try again ");
    }

    print("press 6 to exit");
    int input = int.parse(stdin.readLineSync()!);
    if (input == 6) {
      print(
          "you have successfully exited the command line calculator \n thank you");
    } else {
      print("invalid operation");
    }
    break;
  }
}