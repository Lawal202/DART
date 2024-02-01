// import 'dart:async';

// Future<void> fetchData() async{

//   await Future.delayed(Duration(seconds:3));

//   print('Fetch data from server');
// }

// void main() async{
//   print('start of program');

//   await fetchData();

//   print('Async task completed. Data prepared');
//   print('End of program');
// }

// Future<void> simulateTask1() async{
//   print('Start on task1');
//   await Future.delayed(Duration(seconds:2));

//   print('Task 1 ready');
// }

// Future<void> simulateTask2() async{
//   print('Start on Task2');
//   await Future.delayed(Duration(seconds:4));

//   print('Task 2 ready');
// }

// void main() async{
//   print('Start on Tasks');

//   await simulateTask1();
//   await simulateTask2();

//   print('All tasks completed');
//   print('Exit task simulator');
// }

// Future<void> makePaper() async{
//   print('prepare paper');
//   await Future.delayed(Duration(seconds:2));

//   print('paper ready');
// }

// Future<void> makeWood() async{
//   print('chop wood');
//   await Future.delayed(Duration(seconds:3));

//   print('Wood chopped');
// }

// void main() async{
//   print('start tasks');
//   await Future.wait([makePaper(), makeWood()]);

//   print('tasks completed');
//   print('exit works');
// }


// Future<void> simulateTask1() async {
//   print('Task 1 started');

//   try {
//     // Simulating a delay, e.g., fetching data from a database
//     await Future.delayed(Duration(seconds: 3));

//     // Simulating an error
//     throw Exception('Error occurred in Task 1');
//   } catch (e) {
//     print('Error in Task 1: $e');
//   }

//   print('Task 1 completed');
// }

// Future<void> simulateTask2() async {
//   print('Task 2 started');

//   await Future.delayed(Duration(seconds: 2));

//   print('Task 2 completed');
// }

// void main() async {
//   print('Start of program');

//   await Future.wait([simulateTask1(), simulateTask2()]);

//   print('Both async tasks completed');
//   print('End of program');
// }


// Future<void> processItems(List<String> items) async {
//   for (var item in items) {
//     print('Processing item: $item');

//     // Simulating an asynchronous task for each item
//     await Future.delayed(Duration(seconds: 1));

//     print('Processed item: $item');
//   }
// }

// void main() async {
//   List<String> itemList = ['Cakes', 'Milk', 'Honey', 'Sugar'];

//   print('Start of program');

//   await processItems(itemList);

//   print('All items processed');
//   print('End of program');
// }