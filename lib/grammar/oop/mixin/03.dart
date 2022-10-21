mixin Position {
  _Vec2 center = _Vec2(10, 10);
}

mixin MoveAble on Position {
  double speed = 10;

  void move() {
    center.x += 10;
    center.y += 10;
    print('========$runtimeType=========');
  }
}

class Shape with Position, MoveAble {}

class _Vec2 {
  double x;
  double y;

  _Vec2(this.x, this.y);
}
