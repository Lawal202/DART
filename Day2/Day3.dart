// void main () {
// Car car1 = Car();
// car1.color = "grey";

// Car car2 = Car();
// car2.color = "white";


// car1.whichColor();
// car2.whichColor();

// car1.drive();
// car2.drive();
// }

// class Car{
//   late String color;

//   void drive(){
//     print('$color car is moving ');
//   }

//   void whichColor(){
//     print('car color: $color');
//   }
// }


void main () {
Car car1 = Car();
car1.setColor = "grey";

Car car2 = Car();
car2.setColor = "white";

String Car1Color = car1.colorGet;
print('Car 1 color: $Car1Color');

}

class Car{
  late String _color;

  set setColor(String color){
    this._color = color;
  }

  String get colorGet => this._color;

  void drive(){
    print('car is moving');
  }

  void whichColor() {
    print('car color');
  }
  
}