class A {
  String name;

  A(this.name);

  void run() {
    print("run in a");
  }

  void aa() {}
}

abstract class B {

  String name;

  B(this.name);

  void bb();

  void run() {
    print("run in b");
  }

  void log() {
    print("log in a");
  }
}

class C implements A, B {
  @override
  void aa() {
    // TODO: implement aa
  }

  @override
  void bb() {
    // TODO: implement bb
  }

  @override
  void log() {
    // TODO: implement log
  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  String get name => "c";

  @override
  set name(String _name) {
    name = _name;
  }
}
