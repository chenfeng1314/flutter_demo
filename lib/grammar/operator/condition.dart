void main() {
  foo1();
  print(getLager(5, 6));
}

void foo1() {
  int a = 5;
  int b = 6;
  print(a > b);
  print(a < b);
  print(a == b);
  print(a != b);
  print(a <= b);
  print(a >= b);
}

num getLager(num a, num b) {
  var result = a > b ? a : b;
  return result;
}
