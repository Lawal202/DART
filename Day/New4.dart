import 'dart:io';

// void main(){
//   print('enter your name');
//   var name = stdin.readLineSync();
//   print("Hello $name");
// }

void main(){

  // int currentYear = DateTime.now().year;
  // stdout.write('Enter your age');
  // String ageInput = stdin.readLineSync()!;
  // int age = int.parse(ageInput);

  // int yearOfBirth = currentYear - age;

  // print('your birth year is: $yearOfBirth');


  
  int currentAge = DateTime.now().year;
  stdout.write('Enter your year of birth');
  String yearInput = stdin.readLineSync()!;
  int year = int.parse(yearInput);

  int AgeOfBirth = currentAge - year;

  print('your birth year is: $AgeOfBirth');
}