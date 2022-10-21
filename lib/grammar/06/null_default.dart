void main() {
  foo(null);
  foo("tony");

  _Person toly = _Person();
  toly
    ..name = "toly"
    ..age = 18
    ..log();

  List<int> list1 = [0, 1, 2, 3, 4];
  List<int> list2 = [6, ...list1, 7];
  print(list2);
}

void foo(String? arg) {
  String b = arg ?? "UNKNOWN";
  print(b);
}

class _Person {
  String name = '';
  int age = 0;

  void log() {
    print("name:$name,age:$age");
  }
}
