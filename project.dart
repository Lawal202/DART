import 'dart:convert';
import 'dart:io';



class Task {

  String title;
  String description;
  bool completed;

  Task(this.title, this.description, this.completed);
}

class TaskManager {

  List<Task> tasks = [];

  void addTask(String title, String description) {
    tasks.add(Task(title, description, false));
    print('Task added successfully.');
  }

  void viewTasks() {
    for (var i = 0; i < tasks.length; i++){
      print('${i + 1}. ${tasks[i].title} - ${tasks[i].description} - ${tasks[i].completed ? "Completed" : "pending"}');
    }
  }

  void markAsCompleted(int index) {
    if (index >= 0 && index < tasks.length){
      tasks[index].completed = true;
      print('Task marked as completed');
    } else {
      print('Invalid task index.');
    }
  }

  void saveToFile(String fileName) {
    final file = File(fileName);
    final tasksJson = tasks.map((task) => {'title': task.title, 'description': task.description, 'completed': task.completed}).toList();
    file.writeAsStringSync(jsonEncode(tasksJson));
    print('Tasks saved to file.');
  }

  void loadFromFile(String fileName){
    try {
      final File f = File(fileName );
      final contents = f.readAsStringSync();
      final loadedTasks = jsonDecode(contents);
      tasks = loadedTasks.map<Task>((task) => Task(task['title'], task['description'], task['completed'])).toList();
      print('Task loaded from file.');
    } catch (e) {
      print('Error loading tasks from file: $e');
    }
  }
}

void main() {
  final taskManager = TaskManager();

  while (true) {
    print('Dart Task Manager');
    print('1. Add a new task');
    print('2. View tasks');
    print('3. Mark a task as completed');
    print('4. Save task to a file');
    print('5. Load tasks from a file');
    print('6. Exit');

    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
      print('Enter task title:');
      var title = stdin.readLineSync()!;
      print('Enter task description:');
      var description = stdin.readLineSync()!;
      taskManager.addTask(title, description);
      break;

      case 2:
      taskManager.viewTasks();
      break;

      case 3:
      print('Enter the index of the task to mark as completed:');
      var index = int.parse(stdin.readLineSync()!);
      taskManager.markAsCompleted(index - 1);
      break;

      case 4:
      print('Enter file name to save tasks:');
      var fileName = stdin.readLineSync()!;
      taskManager.saveToFile(fileName);
      break;

      case 5:
      print('Enter file name to load task:');
      var fileName = stdin.readLineSync()!;
      taskManager.loadFromFile(fileName);
      break;

      case 6:
      exit(0);

      default:
      print('Error. Please try again.');
    }
  }
}