mixin A {
  String name = "A";

  void log() {
    print(name);
  }
}

mixin B {
  String name = "B";

  void log() {
    print(name);
  }
}

class C with B, A {
  @override
  void log() {
    print(name);
    super.log();
    print('C');
  }
}

void main() {
  C c = C();
  c.log();
}
