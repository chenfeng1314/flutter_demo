void main() {
  _Vec2 center = _Vec2(10, 10);
  _Vec2 vec = center + _Vec2(20, 20);
  print(vec.toString());
}

class _Vec2 {
  double x;
  double y;

  _Vec2(this.x, this.y);

  _Vec2 operator +(_Vec2 vec) {
    return _Vec2(x + vec.x, y + vec.y);
  }

  @override
  String toString() {
    return 'Vec2($x,$y)';
  }
}
