import 'dart:io';
void main(){

// pow();
// pow2(4);
print("start");
print('Enter Num1:');
int number1 = int.parse(stdin.readLineSync()!);
print('Enter Num2:');
int number2 = int.parse(stdin.readLineSync()!);
int FinalRe = add(num1: number1, num2: number2);
print('The result is $FinalRe');

}

// void pow(){
//   int y = 23 * 12;
//   print('Result of mathod pow: $y');
// }

// void pow2(int x){
//   int y = x * x;
//   print('Result of mathod pow: $y');
// }

int add({required int num1, required int num2}){
  int Result = num1 + num2;
  return Result;
  // print('The result is: $Result');
}