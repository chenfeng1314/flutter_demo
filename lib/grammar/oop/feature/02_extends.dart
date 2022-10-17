class _Shape {
  _Vec2 center;

  _Shape(this.center);

  void move() {
    center.x += 10;
    center.y += 10;
  }

  void rotate() {}
}

class _Circle extends _Shape {
  double radius;

  _Circle(_Vec2 center, this.radius) : super(center);

  void draw() {
    String info = "绘制圆形，中心点(${center.x},${center.y})"
        "半径:$radius";
    print(info);
  }
}

class _Rectangle extends _Shape {
  double width;
  double height;

  _Rectangle(_Vec2 center, {this.width = 10, this.height = 10}) : super(center);

  void draw() {
    String info = "绘制矩形，中心点(${center.x},${center.y})"
        "宽:$height, 高: $width";
    print(info);
  }
}

class _Vec2 {
  double x;
  double y;

  _Vec2(this.x, this.y);
}
