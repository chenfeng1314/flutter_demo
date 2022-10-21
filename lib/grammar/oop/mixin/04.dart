class A {
  String name = "A";

  void log() {
    print(name);
  }
}

abstract class B {
  void log();
}

class _C with A, B {
  @override
  void log() {
    super.log(); // B
    print("C");
  }
}

void main() {
  _C c = _C();
  c.log();
}
