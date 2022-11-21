//*1.fucntions which returns value: Ham tr ve gia tri
int add(int a, int b) {
  return a + b;
}

//*2.functions with named parameters
double multiply({double x = 0, double y = 0}) {
  print('x= $x, y = $y');
  return x * y;
}

//*3.functions which returns "no value": ham ko tra ve gia tri
sayHello([String name = 'world']) {
  print('Hello $name');
}

//*4.functions which return a String
String getUrl(String serverName, {int port = 8080}) {
  return 'http://$serverName:$port';
}

//*5: One-line functions
String getUrls(String serverName, {int port = 8080}) =>
    'http://$serverName:$port';

//*6: function_tra_ve_xau_ky_tu
String getDateTimeString({int? day, int? month, int? year}) {
  //? = optional variable = nullable
  String stringDay = (day ?? 0) < 10 ? '0$day' : '$day';
  String stringMonth = (month ?? 0) < 10 ? '0$month' : '$month';
  //?? mean "default value"
  return '$stringDay-$stringMonth-$year';
}

//*7:Functions with functions as a parameter: Ham dau vao la 1 fucntion
void doSomeTasls({int param1 = 0, int param2 = 0, Function? completion}) {
  print('Do something');
  completion!('This is result'); //!= make sure that it is "Not NUll"
}
