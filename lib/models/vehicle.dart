//*Xe
//*abstract: ham_dở_dang
abstract class Vehicle {
  late String name;
  late int year;

  //contructor
  Vehicle(this.name, this.year);

  //Function: toString
  @override
  String toString() => 'name: $name year: $year';
}
