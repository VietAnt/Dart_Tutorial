import 'package:dart_tutorial/models/vehicle.dart';

class Car extends Vehicle {
  double engineSize = 0.0;
  double horsePower = 0.0;

  //super: phuong_thuc_khoi_tao_lop_cha
  Car(String name, int year, this.engineSize, this.horsePower)
      : super(name, year);

  //add more method
  void describe() {
    print('This car run with engineSize: $engineSize, horsePower: $horsePower');
  }

  //getter:setter methods
  int get age => DateTime.now().year - year;
  set age(int value) => year = DateTime.now().year - value;

  //to_String
  @override
  String toString() =>
      '${super.toString()}, engineSize: $engineSize, horsePower: $horsePower';
}
