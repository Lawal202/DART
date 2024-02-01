import 'dart:io';

void main() {
  print("Temperature Converter");

  // Prompt the user for the conversion type
  print("Choose conversion type:");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");

  int choice = int.parse(stdin.readLineSync()!);

  // Perform the conversion based on the user's choice
  if (choice == 1) {
    celsiusToFahrenheit();
  } else if (choice == 2) {
    fahrenheitToCelsius();
  } else {
    print("Invalid choice. Please choose 1 or 2.");
  }
}

void celsiusToFahrenheit() {
  print("Enter temperature in Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);

  // Formula: (Celsius * 9/5) + 32
  double fahrenheit = (celsius * 9 / 5) + 32;

  print("$celsius°C is equal to $fahrenheit°F");
}

void fahrenheitToCelsius() {
  print("Enter temperature in Fahrenheit:");
  double fahrenheit = double.parse(stdin.readLineSync()!);

  // Formula: (Fahrenheit - 32) * 5/9
  double celsius = (fahrenheit - 32) * 5 / 9;

  print("$fahrenheit°F is equal to $celsius°C");
}