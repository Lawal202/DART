// import 'dart:io';
// void main() {
//   print('Enter your year of Birth');
//   int yearOfBirth = int.parse(stdin.readLineSync()!);

//   print('Enter your month of Birth');
//   int monthOfBirth = int.parse(stdin.readLineSync()!);

//     print('Enter your day of Birth');
//   int dayOfBirth = int.parse(stdin.readLineSync()!);

//   //Calculate Age

//   DateTime currentDate = DateTime.now();

//   DateTime birthDate = DateTime(yearOfBirth,monthOfBirth,dayOfBirth);

//   Duration ageDifference = currentDate.difference(birthDate);

//   int years = ageDifference.inDays ~/ 365;

//   int months = (ageDifference.inDays % 365) ~/ 30;

//   int days = ageDifference.inDays % 30;

//   print('\nBirth information:');
//   print('\nYear: $years');
//   print('\nMonths: $months');
//   print('\nDays: $days');
// }