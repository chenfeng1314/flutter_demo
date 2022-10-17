void main() {
  foo1();
  print('---------------------');
  foo2();
}

void foo1() {
  int a = 10;
  int b = 3;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b);
  print(a % b);
}

void foo2() {
  double a = 10.2;
  int b = 3;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b);
  print(a % b);
}
