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

}

//Day4 Mixins


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

class Student extends Person{
  late int _semester;

  int get getSemester => this._semester;

  set setSemester(int semester){
  this._semester = semester;}
}