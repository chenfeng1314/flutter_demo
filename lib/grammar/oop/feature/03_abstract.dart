void main() {
  _Vec2 vec2 = _Vec2(10, 10);
  _Shape shape = _Rectangle(vec2, width: 20.0, height: 10.0);
  shape.draw();
}

abstract class _Shape {
  _Vec2 center;

  _Shape(this.center);

  void move() {
    center.x += 10;
    center.y += 10;
  }

  void draw() {
    String info = "绘制矩形，中心点(${center.x},${center.y})"
        "${drawInChild()}";
    print(info);
  }

  String drawInChild();

  void rotate() {}
}

class _Rectangle extends _Shape {
  double width;
  double height;

  _Rectangle(_Vec2 center, {this.width = 10, this.height = 10}) : super(center);

  @override
  String drawInChild() {
    return "宽:$width, 高: $height";
  }
}

class _Vec2 {
  double x;
  double y;

  _Vec2(this.x, this.y);
}
