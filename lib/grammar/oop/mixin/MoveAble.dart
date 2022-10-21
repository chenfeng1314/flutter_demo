void main() {
  Shape shape = Shape();
  shape.speed = 40;
  shape.move();
  shape.paint();
  print(shape is MoveAble);
}

mixin PaintAble {
  void paint() {
    print("=====$runtimeType paint====");
  }

  void init(); // tag1
}

mixin MoveAble {
  double speed = 10;

  void move() {
    print("=====$runtimeType move====");
  }
}

class Shape with MoveAble, PaintAble {
  @override
  void init() {}
}
