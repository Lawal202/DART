// import 'dart:io';
// import 'dart:math';

// void main() {
//   print('Advanced Command-Line Calculator');
//   print('---------------------------------');

//   while (true){
//     String input = getUserInput();

//     if(input.toLowerCase()=='exit'){
//       print('Exiting the calculator. Goodbye!');
//       break;
//     }

//      try {
//     double result = evaluateExpression(input);
//     print("Result: $result");
//   } catch (e) {
//     print('Error: $e');
//     }
//   }

 
// }

// String getUserInput() {
//   print("Enter an expression (e.g.,2 * (3 + 4) ^ 2):");
//   return stdin.readLineSync()!.trim();
// }

// double evaluateExpression(String expression) {
//   List<String> tokens = parseExpression(expression);

//   if (tokens.isEmpty) {
//     throw "Invalid expression. Please enter a valid expression. ";
//   }

//   return evaluateTokens(tokens);
// }

// List<String> parseExpression(String expression) {
//   List<String> tokens = [];
//   String currentToken = "";

//   for(int i = 0; i < expression.length; i++) {
//     String char = expression[i];

//     if(char == ' ') {
//       continue;
//     }

//     if(isOperator(char) || isParenthesis(char)) {
//       if(currentToken.isNotEmpty){
//         tokens.add(currentToken);
//         currentToken = "";
//       }
//       tokens.add(char);
//     }else {
//       currentToken += char;

//       if (i == expression.length - 1 || isOperator(expression[i + 1]) || isParenthesis(expression[i + 1])) {
//         tokens.add(currentToken);
//         currentToken = "";
//       }
//     }
//   }

//   return tokens;
// }

// bool isOperator(String token) {
//   return token == '+' || token == '-' || token == '*' || token == '/' || token == '^' || token == 'sqrt';
// }

// bool isParenthesis(String token) {
//   return token == '(' || token == ')';
// }

// double evaluateTokens(List<String> tokens) {

//   while (tokens.contains('(')) {
//     int openIndex = tokens.lastIndexOf('(');
//     int closeIndex = tokens.indexOf(')', openIndex);

//     if (openIndex == -1 || closeIndex == -1 || closeIndex <= openIndex) {
//       throw "Mismatched parentheses in the expression.";
//     }

//     List<String> subExpression = tokens.sublist(openIndex + 1, closeIndex);
//     double subResult = evaluateTokens(subExpression);

//     tokens.replaceRange(openIndex, closeIndex + 1, [subResult.toString()]);
//   }

//   while (tokens.contains('^') || tokens.contains('sqrt')) {
//     int index = tokens.indexOf('^');
//     if (index == -1) {
//       index = tokens.indexOf('sqrt');
//     }

//     if (index == 0 || index == tokens.length - 1 || !isNumeric(tokens[index - 1]) || !isNumeric(tokens[index + 1])) {
//       throw "Invalid use of experimentation or square root operator.";
//     }

//     double base = double.parse(tokens[index - 1]);
//     double exponent;

//     if (tokens[index] == '^') {
//       exponent = double.parse(tokens[index + 1]);
//       tokens.replaceRange(index - 1, index + 2, [(pow(base,exponent)).toString()]);
//     }else{
//       tokens.replaceRange(index - 1, index + 1, [(sqrt(base)).toString()]);
//     }
//   }

//   while (tokens.length > 1) {
//     if (tokens.length != 3 || !isNumeric(tokens[0]) || !isNumeric(tokens[2])|| !isOperator(tokens[1])) {
//       throw "Invalid expression. please enter a valid expression.";
//     }

//     double operand1 = double.parse(tokens[0]);
//     String operator = tokens[1];
//     double operand2 = double.parse(tokens[2]);

//     double result;

//     switch (operator) {
//       case '+':
//       result = operand1 + operand2;
//       break;
//       case '-':
//       result = operand1 - operand2;
//       break;
//       case '*':
//       result = operand1 * operand2;
//       break;
//       case '/':
//       if (operand2 == 0) {
//         throw "Division by zero is not allowed.";
//       }
//       result = operand1 / operand2;
//       break;
//       default:
//       throw "Invalid operator. Supported operators are +, -, *, /, ^, and sqrt.";
//     }

//     tokens.replaceRange(0, 3, [result.toString()]);
//   }

//   return double.parse(tokens[0]);
// }

// bool isNumeric(String s) {
//   if (s == null) {
//     return false;
//   }
//   return double.tryParse(s) != null;
// }