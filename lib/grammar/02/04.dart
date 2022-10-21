class _CClass<T extends _Shape> {
  final T memberT;

  _CClass(this.memberT);

  void draw() {
    memberT.draw();
  }
}

class _Circle extends _Shape {}

class _Shape {
  void draw() {}
}
