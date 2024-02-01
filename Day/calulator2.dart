import 'dart:io';
import 'dart:math';
void main(){
  print("Calculator");
  print("Enter the first number");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter the operator. 1. + for addition, 2. - for subtraction, 3. * formultiplication, 4. / for division, 5. ^ for exponentiation");
  String operator = stdin.readLineSync()!;
  print("Enter the second number");
  double num2 = double.parse(stdin.readLineSync()!);
  double result = 0;

  switch(operator) {
    case "+": {
      result =  num1 + num2; 
      print("$num1 + $num2 = $result");
      }
    break;
    case "-": {
      result =  num1 - num2; 
      print("$num1 - $num2 = $result");}
    break;
    case "*": {
      result =  num1 * num2; 
      print("$num1 * $num2 = $result");}
    break;
    case "/": {
      if(num2 == 0){
        print("divisor cannot be 0");
      }
      else{
        result =  num1 / num2; 
      print("$num1 / $num2 = $result");;
      }}
    break;
    case "^": {
      num result =  (pow(num1, num2)); 
      print("$num1 raised to the power of $num2 is $result");}
    break;
    default: {print("Invalid choice");}
  }
}