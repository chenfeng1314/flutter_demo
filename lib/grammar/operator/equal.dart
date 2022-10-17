void main() {
  int a = 10;
  int b = a + 40;
  int? c;
  int d = c ??= 20;
  print(d);
}
