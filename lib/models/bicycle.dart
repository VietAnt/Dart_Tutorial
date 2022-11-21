import 'package:dart_tutorial/models/vehicle.dart';

class Bicycle extends Vehicle {
  bool hasBasket;
  static int maxSpeed = 100;

  //contructor with gan_nhan
  Bicycle({required String name, required int year, required this.hasBasket})
      : super(name, year);

  //euqal: so sanh
  bool equals(Object other) =>
      identical(this, other) ||
      (other is Bicycle &&
          name == other.name &&
          year == other.year &&
          hasBasket == other.hasBasket);

  //copyWith = clone and change property value = nhan ban gia tri
  Bicycle copyWith({String? name, int? year, bool? hasBasket}) => Bicycle(
        name: name ?? this.name,
        year: year ?? this.year,
        hasBasket: hasBasket ?? this.hasBasket,
      );

  //toString
  @override
  String toString() => '${super.toString()}, hasBasket = $hasBasket';
}
