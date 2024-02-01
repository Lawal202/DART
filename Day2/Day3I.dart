void main() {

final Car blueCar = Car(color: "green", engine: "v8");
print(blueCar.color);
}

class Car{

  Car({required this.color, required this.engine});

  final String color;
  final String engine;

  void drive() {
    print("Car is moving");
  }
}