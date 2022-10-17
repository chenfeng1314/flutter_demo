void main() {
  int age = 13;
  double height = 1.39;
  bool allow = age < 14 && height < 1.4;
  print(allow);
  var allow2 = age < 14 || height < 1.4;
  print(allow2);
}
