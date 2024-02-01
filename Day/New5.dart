import 'dart:io';

class Student {
  String name;
  Map<String, int> subjects = {};
  int semester;

  Student(this.name, this.semester);

  void addSubjectScore(String subject, int score) {
    subjects[subject] = score;
  }

  double calculateOverallGrade() {
    if (subjects.isEmpty) return 0.0;
    double totalScore = subjects.values.reduce((a,b) => a + b).toDouble();
    return totalScore / subjects.length;
  }

  String getGrade() {
    double overallGrade = calculateOverallGrade();
    if (overallGrade >= 90) return 'A';
    else if (overallGrade >=80) return 'B';
    else if (overallGrade >=70) return 'C';
    else if (overallGrade >=60) return 'D';
    else return 'F';
  }
}

void main() {
  List<Student> students = [];

  print('Enter the number of students:');
  int numberOfStudents = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numberOfStudents; i++) {
    print('\nEnter details for student ${i + 1}:');

    print('Name:');
    String name = stdin.readLineSync()!;

    print('Semester:');
    int semester = int.parse(stdin.readLineSync()!);

    Student student = Student(name, semester);

    print('Enter subjects and scores (subject score):');
    for (int j = 0; j < numberOfStudents; j++) {
      String input = stdin.readLineSync()!;
      List<String> parts = input.split(' ');
      if (parts.length == 2) {
        String subject = parts[0];
        int score = int.parse(parts[1]);
        student.addSubjectScore(subject, score);
      }
    }
    students.add(student);

    print('\nResults');
    for (Student student in students){
      print('\nStudent: ${student.name}');
      print('Overall Grade: ${student.getGrade()}');
    }
  }
}
