void main() {
  _Drawable drawable = _Drawable();
  _Vec2 vec2 = _Vec2(3.0, 4.0);
  drawable.draw(vec2);
}

class _Drawable {
  void draw(_Vec2 vec2) {
    print('绘制向量(${vec2.x},${vec2.y})');
  }
}

class _Vec2 {
  double x;
  double y;

  _Vec2(this.x, this.y);
}
