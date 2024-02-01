import  'dart:io';

import 'Work1.dart'; 

void main() {
print('find the maximum number');
print('enter first number');
double num1 = double.parse(stdin.readLineSync()!);

print('enter second number');
double num2 = double.parse(stdin.readLineSync()!);

print('enter third number');
double num3 = double.parse(stdin.readLineSync()!);

double max = solveMax(num1, num2, num3);
print('Maximum $num1, $num2, $num3');

}

double Solvemax(double a, double b, double c,){
  if(a > b && a > c){
    return a;
  }else if(b >= a && b >= c){
    return b;
  }else{
    return c;
  }
}
