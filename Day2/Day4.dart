void main() {
Student student1 = Student();
student1.setSemester = 2;
student1.setAge = 22;
student1.setName = 'Lanre';

Person person1 = Person();
person1.setName = 'Jose';
person1.setAge = 30;

String semester = student1.getName;
print(semester);
student1.jump();
student1.study();
student1.run();
}

//Day4 Mixins
mixin Learner {
  void study(){
    print('study');
  }
}

mixin Jumper {
  void jump(){
    print('I can jump');
  }
}

//Inheritance
class Person{
  late String _name;
  late int _age;

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String name){
    this._name = name;
  }

  set setAge(int age){
    this._age = age;
  }

  void run(){
    print('$_name runs');
  }
}

class Student extends Person with Jumper, Learner{
  late int _semester;

  int get getSemester => this._semester;

  set setSemester(int semester){
  this._semester = semester;}
}