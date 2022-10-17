void main() {
  _Circle circle = _Circle(_Vec2(100, 100), radius: 50);
  _Rectangle rectangle = _Rectangle(_Vec2(50, 50));
  circle.move();
  rectangle.move();
}

class _Shape {
  _Vec2 center;

  _Shape(this.center);

  void move() {
    center.x += 1;
    center.y += 1;
    print("$runtimeType:move(10,10)==> center:(${center.x},${center.y})");
  }
}

class _Circle extends _Shape {
  double radius;

  _Circle(_Vec2 vec, {this.radius = 10.0}) : super(vec);
}

class _Rectangle extends _Shape {
  double width;
  double height;

  _Rectangle(_Vec2 vec, {this.width = 20, this.height = 20}) : super(vec);
}

class _Vec2 {
  double x;
  double y;

  _Vec2(this.x, this.y);
}
