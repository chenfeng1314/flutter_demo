void main() {
  _Vec2 vec2 = _Vec2(2, 3);
  print('x:${vec2.x},y:${vec2.y}');
  vec2.x = 15;
  print('x:${vec2.x},y:${vec2.y}');
  print(vec2.getInfo());
  print(vec2.getX);
  print(vec2.name);
  vec2.name = null;
  print(vec2.name);
  vec2.name = "toly";
  print(vec2.name);
  _Vec2.polar(length: 0, x: 4.0, rad: 0.0);

  Person.nation = "唐朝";
  print(Person.nation);
  Person p0 = Person('甲');
  Person p1 = Person('乙');
  Person p2 = Person('丙');
  Person.printNation();
  Person.nation = "宋朝";
  p0.say();
  p1.say();
  p1._work();
  Person.printNation();
}

class _Vec2 {
  double? x;
  double? y;
  String? _name;
  int? length;
  double? rad;

  _Vec2(double x, double y, {String? name})
      : this.x = x,
        this.y = y,
        this._name = name;

  _Vec2.p({this.x = 0, required this.y});

  _Vec2.polar(
      {this.x = 0.0, this.y = 0.0, required this.length, required this.rad});

  String getInfo() => "Vec2(x:$x,y:$y)";

  double? get getX => x;

  String get name => _name ??= "默认值";

  set name(String? value) {
    if (value == null) {
      _name = "default";
    } else {
      _name = "$value:";
    }
  }
}

class Person {
  String _name;
  static String nation = "";

  Person(this._name);

  static void printNation() {
    print('现在朝代是: $nation');
  }

  void say() {
    print('我叫$_name,我是$nation人');
  }

  void _work() {
    print('work');
  }
}

class People {
  String _str = "";

  String get str => str;

  set str(String str) => _str = str;
}
