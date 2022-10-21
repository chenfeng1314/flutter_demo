void main() {
  _Vec2 vec = _Vec2(10.0, 10.0);
  _Rectangle rectangle = _Rectangle(vec);
  print(rectangle is _Shape);
  _Shape circle = _Circle(vec);
  _Circle c = circle as _Circle;
  print(c.center.x);
}

class _Circle extends _Shape {
  _Circle(_Vec2 vec) : super(vec);
}

class _Rectangle extends _Shape {
  _Rectangle(_Vec2 vec) : super(vec);
}

class _Shape {
  _Vec2 center;

  _Shape(this.center);
}

class _Vec2 {
  double x;
  double y;

  _Vec2(this.x, this.y);
}
