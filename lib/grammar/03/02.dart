void main() {
  Person toly = Person();
  String? name = null;
  toly.say(name!);
}

class Person {
  late String name;

  void say(String name) {
    this.name = "aa";
    print('我的名字是:$name');
  }
}
