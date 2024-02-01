// import 'dart:io';
// void main() {
//   print("Enter student name");
//   String studentName = stdin.readLineSync()!;

//   print("Enter score for maths");
//   int maths = int.parse(stdin.readLineSync()!);

//   print("Enter score for English");
//   int English = int.parse(stdin.readLineSync()!);

//   print("Enter score for physics");
//   int physics = int.parse(stdin.readLineSync()!);

//   var student = Student(studentName);
//   student.addScores(maths, English, physics);

//   student.printStudentInfo();
// }

// mixin GradingMixin {
//   String grade(int score) {
//     if (score >= 90) {
//       return 'A';
//     } else if (score >= 80) {
//       return 'B';
//     } else if (score >= 70) {
//       return 'C';
//     } else if (score >= 60) {
//       return 'D';
//     } else {
//       return 'F';
//     }
//   }
// }

// class student {
//   String name;
//   int score;

//   student(this.name, this.score);
 
// }

// mixin SubjectsMixin on GradingMixin {
//   List<student> subjects = [];

//   void addSubject(String name, int score) {
//     subjects.add(student(name, score));
//   }

//   void printSubjectGrades() {
//     for (var subject in subjects) {
//       print('${subject.name}: ${grade(subject.score)}');
//     }
//   }
// }

// class Student with GradingMixin, SubjectsMixin {
//   final String name;

//   Student(this.name);

//   void addScores(int score1, int score2, int score3) {
//     addSubject('maths', score1);
//     addSubject('English', score2);
//     addSubject('physics', score3);
//   }

//   void printStudentInfo() {
//     print('Student: $name');
//     printSubjectGrades();
//   }
// }

import 'dart:io';

void main(){
  Student student = Student();
  student.studentId();
  student.studentName();
  student.physics();
  student.chemistry();
  student.biology();
  int sum = student.phy + student.chem + student.bio;
  double average = sum / 3;
 
  print("Your average is $average");
  Grade(average);

}

class Student with Subject1, Subject2, Subject3{
  late String name;
  late int id;
  void studentId(){
    print("Enter student ID");
    id = int.parse(stdin.readLineSync()!);
  }
  void studentName(){
    print("Enter student name");
    name = stdin.readLineSync()!;
  }
  
}

mixin Subject1 {
  late int phy;
  void physics(){
    print("Enter the physics score");
    phy = int.parse(stdin.readLineSync()!);
  }
}

mixin Subject2 {
  late int chem;
  void chemistry(){
    print("Enter the chemistry score");
    chem = int.parse(stdin.readLineSync()!);
  }
}

mixin Subject3 {
  late int bio;
  void biology(){
    print("Enter the biology score");
    bio = int.parse(stdin.readLineSync()!);
  }
}

void Grade(double average){
  if(average >= 80){
    print("Grade: A-Excellent");
  }
  else if(average >= 70 && average < 80){
    print("Grade: B- Good");
  }
  else if(average >= 60 && average < 70){
    print("Grade: C-Fair");
  }
  else if(average >= 50 && average < 60){
    print("Grade: D-Poor");
  }
  else if(average >= 40 && average < 50){
    print("Grade: E-Very Poor");
  } 
  else {
    print("Grade: F-Fail");
  }
}