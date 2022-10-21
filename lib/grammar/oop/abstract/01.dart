void main() {
  _Shape circle = _Circle(_Vec2(10.0, 10.0));
  circle.printInfo();
}

abstract class _Shape {
  _Vec2 center;

  _Shape(this.center);

  String debugLabelName();

  void printInfo() {
    var name = debugLabelName();
    print("【$name】center:(${center.x},${center.y})");
  }

  void move() {
    center.x += 10;
    center.y += 10;
    print("$runtimeType:move(10,10)==> center:(${center.x},${center.y})");
  }
}

class _Circle extends _Shape {
  _Circle(_Vec2 vec2) : super(vec2);

  @override
  String debugLabelName() => "Circle";
}

class _Vec2 {
  double x;
  double y;

  _Vec2(this.x, this.y);
}
