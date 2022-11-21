import 'package:dart_tutorial/dart_tutorial.dart' as dart_tutorial;
import 'package:dart_tutorial/functions.dart';
import 'package:dart_tutorial/models/bicycle.dart';
import 'package:dart_tutorial/models/car.dart';
import 'package:dart_tutorial/models/vehicle.dart';
import 'package:dart_tutorial/repositories/movie_repository.dart';

void main(List<String> arguments) async {
  var firstName = 'Nguyen';
  String lastname = "Duc Nguyen";
  print('firstname : $firstName, lastname: $lastname');
  String fullname = '$firstName $lastname';

  //1.noi_chuoi: ko can covert sang int,..
  print(fullname);

  //2.bai_tho
  var poem = '''
    In a dark night
    With anxious love inflamed
    For unobserved I went,
   ''';
  print(poem);

  //3.check if a string is empty: kiem_tra_xem_chuoi_rong_khong
  if (poem.isEmpty) {
    print('This string is empty');
  } else {
    print('This string is NOT empty');
  }

  //4.bool: true-flase: Dung_Sai
  bool isValidInput = firstName.isNotEmpty && lastname.isNotEmpty;
  print(isValidInput);

  //5: Function Return
  print('2 add 3 is : ${add(2, 3)}');
  //name parameters
  print('5 time 6 is : ${multiply(x: 5, y: 6)}');
  print(multiply(x: 23));
  sayHello('Hoang');
  sayHello();
  //url
  String urlHome = getUrl('SERVER_X', port: 3002);
  print(urlHome);
  //getDateTime
  print('today is ${getDateTimeString(day: 1, month: 7, year: 2022)}');
  doSomeTasls(
      param1: 1,
      param2: 2,
      completion: (String result) {
        print('The result is: $result');
      });

  //7: List of String : danh sach nhieu ly tu
  List<String> carBrands = [
    "Bentley",
    "BWM",
    "Audi",
    "Fiat",
    "Mercedes-Benz",
    "Toyota",
  ];
  // carBrands = ["Toyota", "Honda"]; //canoy be if "final"
  carBrands[0] = "Honda";
  print(carBrands);
  print('There are ${carBrands.length} brand names');

  //8: --->duyet_mang: For
  for (var i = 0; i < carBrands.length; i++) {
    String carBrand = carBrands[i];
    print('Danh Muc XE : ' + carBrand);
  }

  //9: Duyet_Mang_For_Each
  print("Interate Using forEach");
  carBrands.forEach((carBrand) {
    print(carBrand);
  });

  //10*: Shuffle: ham_trao_phan_tu
  carBrands.shuffle();
  print("After Shuffled");
  carBrands.asMap().forEach((index, carBrands) {
    print('index: $index, carBrands: $carBrands');
  });

  //11*: Them phan tu vao Mang: Insert more Item
  carBrands.add('Mazda');
  print(carBrands);
  //them_gia_tri_dau_tien
  print('Add item to the  first');
  carBrands.insert(0, 'Cadillac');
  print(carBrands);

  //12*: Nhan ban vung nho
  List<String> clonedCarBrands = [...carBrands];
  clonedCarBrands[0] = 'Honda';
  print('cloneCarBrands = $clonedCarBrands');

  //13*: sort ascending: theo thu tu tang dan chu cai
  print('After Sort Ascending');
  clonedCarBrands.sort(((a, b) => a.compareTo(b)));
  print('ClonedCarBrands = $clonedCarBrands');

  //14*: Class = Vehicle.Dart
  // Vehicle vehicle = new Vehicle('Vehicle xx', 2022);
  // print(vehicle.toString());

  //15*: Car.Dart
  print("Init a Car object from class");
  Car car1 = Car("Lexus CT200H Hybird", 2018, 119, 150);
  car1.name = "Lexus CT200H F SPORT";
  car1.year = 2000;
  car1.describe();
  car1.age = 10;
  print(car1);
  print(car1.age);
  print(car1.year);

  //16*: add more class
  //create object form Bicycle class
  Bicycle bicycle1 =
      Bicycle(name: "New TALON E26", year: 2022, hasBasket: true);
  print(bicycle1);
  Bicycle bicycle2 =
      Bicycle(name: "New TALON E26", year: 2022, hasBasket: true);

  //17*:How to compare contents of 2 object
  //write your own method
  if (bicycle1.equals(bicycle2)) {
    print('2 object has the same contents');
  }

  //18*:Nhan_ban_thuoc_tinh
  Bicycle copyWith({String? name, int? year, bool? hasBasket}) =>
      Bicycle(name: 'HEllo', year: 2022, hasBasket: true);

  //19* you can add all object value = static
  print(Bicycle.maxSpeed);

  //20*: An array of Object
  List<Car> cars = [
    Car("BWM 200 DCT", 2021, 1.5, 187),
    Car("Vinfat 200 DCT", 2021, 1.5, 187),
    Car("Honda 200 DCT", 2021, 1.5, 187),
    Car("DTA 200 DCT", 2014, 1.5, 187),
    Car("Jeta 200 DCT", 2021, 1.5, 187),
    Car("Tata 200 DCT", 2015, 1.5, 187),
    Car("BYD 200 DCT", 2021, 1.5, 187),
    Car("GLS 200 DCT", 2016, 1.5, 187),
  ];
  // print('car: $cars');
  cars.asMap().forEach((index, element) {
    print('$index - $element');
  });

  //21*:Insert Car to The First
  cars.insert(0, Car("Nissan GTA", 2022, 487.5, 230));

  //22*: Insert car to the first
  cars.add(Car("Bentley 8 GTA", 1945, 187.5, 321));

  //23*: Filter cars which year is between 2013 and 2016: Bo loc xe
  List<Car> filterdCar = cars
      .where((element) => element.year >= 2013 && element.year <= 2016)
      .toList();
  print('Filter cars: $filterdCar');
  filterdCar.asMap().forEach((index, car) {
    print('$index -- $car');
  });

  //24*:change an object: thay doi doi tuong
  // filterdCar[0].name = "Hana";

  //25*: Sap xep theo ma luc (tang dan)
  print("Sort the list, by horsePower");
  List<Car> sortedCars = [...cars];
  sortedCars
      .sort((((car1, car2) => car1.horsePower.compareTo(car2.horsePower))));
  print("After cloned and sorted");
  sortedCars.forEach((element) {
    print(element);
  });

  //26*:get car's name and add to a separeted list: lay rieng ten cho vao mang
  //Map:Ánh Xạ = Tạo 1 danh sách có cùng kích thước nhưng nội dung khác nhau
  List<String> carNames = cars.map((car) => car.name).toList();
  print(carNames);

  //27*Map(key,value): Đối tượng
  final Map<String, Object> user = {
    'name': 'Hoang',
    'email': 'hoang21@gmail.com',
    'age': 22,
  };
  user['name'] = 'Henrry';
  print(user);

  //28*:Fetch Movie
  // print('Begin Task 1');
  // fetchMovies().then((movies) {
  //   print('Finsihed Task 1');
  //   print('result1 = $movies');
  // });

  // print('Begin Task 2');
  // fetchMovies().then((movies) {
  //   print('Finsihed Task 2');
  //   print('result2 = $movies');
  // });

  //TH1:
  print('Begin Task 1');
  var result1 = await fetchMovies();
  print('result1 = $result1');
  //---await----//
  print('Begin Task 2');
  var result2 = await fetchMovies();
  print('result2 = $result2');
}
